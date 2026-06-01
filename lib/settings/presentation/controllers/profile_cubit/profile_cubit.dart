import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';
import 'package:pastport/core/utils/app_router.dart';
import 'package:pastport/settings/models/profile_model.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  var fNameController = TextEditingController();
  var lNameController = TextEditingController();

  UserModel? userModel;

  void getUserData(context)
  {
    emit(GetProfileLoadingState());
    final token = LocalStorage.token;
    print(token);
    DioHelper.getData(
      token: token,
      url: GETPROFILE,
    ).then((value)
    {
      userModel = UserModel.fromJson(value.data);
      print(value.data);
      emit(GetProfileSuccessState());
    }).catchError((error)
    {
      print(
        "Error happens while get user profile, "
            "error is : ${error.toString()}",
      );
      checkUserExist(context);
      emit(GetProfileFailureState());
    });
  }

  void checkUserExist(context)
  {
    if(LocalStorage.token == null)
    {
      print("token is empty");
      context.go(AppRouter.kAuthView);
    }
  }
}