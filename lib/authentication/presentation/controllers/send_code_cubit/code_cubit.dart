import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/send_code_cubit/code_states.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';

class SendCodeCubit extends Cubit<SendCodeStates> {
  SendCodeCubit() : super(SendCodeInitialState());

  static SendCodeCubit get(context) => BlocProvider.of(context);



  void verifyCode({required String code, required String mail})
  {
    emit(VerifyCodeLoadingState());
    DioHelper.postData(
      url: SENDCODE,
      data: {
        "email" : mail,
        "code" : code
      },
    ).then((value){
      emit(VerifyCodeSuccessState());
    }
    ).catchError((error)
    {
      print("error from verify code is ${error.toString()}");
      emit(VerifyCodeFailureState());
    });
  }
}