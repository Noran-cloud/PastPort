import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/data/models/register_model.dart';
import 'package:pastport/authentication/presentation/controllers/sign_up_cubit/sign_up_states.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';

class SignUpCubit extends Cubit<SignUpStates>
{
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);


  var formKey = GlobalKey<FormState>();

  var mailController = TextEditingController();
  var passController = TextEditingController();
  var fNameController = TextEditingController();
  var lNameController = TextEditingController();
  var confirmPassController = TextEditingController();


  RegisterModel? registerModel;

  void registerNewUser({
    required String mail,
    required String pass,
    required String confirmPass,
    required String fName,
    required String lName,
  })
  {
    emit(SignUpLoadingState());

    DioHelper.postData(
      url: REGISTER,
      data: {
        "email": mail,
        "password": pass,
        "confirmPassword": confirmPass,
        "firstName": fName,
        "lastName": lName
      },
    ).then((value)
    {
      emit(SignUpSuccessState());
      registerModel = RegisterModel.fromJson(value.data);
      print("data from sign up request is ${value.data}");
      LocalStorage.saveToken(registerModel!.token);
      print("token is : ${LocalStorage.token}");

    }).catchError((error)
    {
      print("Error happens while registration, error is : ${error.toString()}");
      emit(SignUpFailureState());
    });
  }
}