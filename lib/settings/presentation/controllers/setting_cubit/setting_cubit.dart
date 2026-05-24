import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/settings/presentation/controllers/setting_cubit/setting_states.dart';

class SettingCubit extends Cubit<SettingStates>
{
  SettingCubit() : super(SettingInitialState());

  static SettingCubit get(context) => BlocProvider.of(context);

  bool notSend = true;

  void reportProblem()
  {
    notSend = false;
    print("Send report is $notSend");
    emit(SendReportState());
  }
}