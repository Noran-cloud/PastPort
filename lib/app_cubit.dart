import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/app_states.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  void checkUserLogin()
  {
    if(LocalStorage.token != null)
    {
      emit(UserLoggedInState());
    }
    else
    {
      emit(UserLoggedOutState());
    }
  }
}