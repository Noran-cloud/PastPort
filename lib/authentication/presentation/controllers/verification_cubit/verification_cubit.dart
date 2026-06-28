import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/data/models/verification_model.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_states.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';

class VerificationCubit extends Cubit<VerificationStates>
{
  VerificationCubit() : super(VerificationInitialState());

  static VerificationCubit get(context) => BlocProvider.of(context);

  var mailController = TextEditingController();

  VerificationModel? verificationModel;

  void sendPasswordResetEmail({required String mail})
  {
    emit(SendCodeLoadingState());

    DioHelper.postData(
      url: FORGETPASS,
      data: {
        "email" : mail,
      },
    ).then((value)
    {
      verificationModel = VerificationModel.fromJson(value.data);
      if(verificationModel!.success == true)
      {
        emit(SendCodeSuccessState());
        print("data from send code request is ${value.data}");
      } else
      {
        emit(SendCodeFailureState());
      }

    });
  }
}