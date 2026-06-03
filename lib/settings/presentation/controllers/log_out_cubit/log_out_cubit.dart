import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';
import 'package:pastport/settings/presentation/controllers/log_out_cubit/log_out_states.dart';

class LogOutCubit extends Cubit<LogOutStates> {
  LogOutCubit() : super(LogOutInitialState());

  static LogOutCubit get(context) => BlocProvider.of(context);



  Future<void> logout() async {
    final token = LocalStorage.token;
    emit(LoggedOutLoadingState());
    DioHelper.postData(
      token: token,
      url: LOGOUT,
      data: {},
    ).then((value) async {
      await LocalStorage.sharedPreferences.remove('token');
      print(value.data);
      emit(LoggedOutSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(LoggedOutFailureState());
    });
  }

}


