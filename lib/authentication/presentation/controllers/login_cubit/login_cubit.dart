import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/data/models/register_model.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_states.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var loginFormKey = GlobalKey<FormState>();
  var mailController = TextEditingController();
  var passController = TextEditingController();

  RegisterModel? registerModel;

  void loginUserWithEmailAndPassword({required String mail, required String pass})
  {
    emit(LoginLoadingState());

    DioHelper.postData(
        url: LOGIN,
        data: {
           "email" : mail,
           "password" : pass,
        },
    ).then((value)
    {
      emit(LoginSuccessState());
      registerModel = RegisterModel.fromJson(value.data);
      print("data from login request is ${value.data}");
      LocalStorage.saveToken(registerModel!.token);
      print("token is : ${LocalStorage.token}");

    }).catchError((error)
    {
      print("Error happens while logging in, error is : ${error.toString()}");
      emit(LoginFailureState());
    });
  }

}

