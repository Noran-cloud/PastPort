import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/network/remote/end_points.dart';
import 'package:pastport/subscription/data/models/subscription_plan_model.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_states.dart';

class SubscriptionCubit extends Cubit<SubscriptionStates>
{
  SubscriptionCubit() : super(SubscriptionInitialState()) {
    print("Cubit Created");
  }
  static SubscriptionCubit get(context) => BlocProvider.of(context);


  List<SubscriptionPlanModel> subscriptionPlans = [];

  void getAllPlans()
  {
    emit(GetAllPlansLoadingState());
    DioHelper.getData(
      url: GETSUBPLANS,
    ).then((value)
    {
      subscriptionPlans =
          (value.data as List)
              .map((e) =>
              SubscriptionPlanModel.fromJson(e))
              .toList();

      print(value.data);
      emit(GetAllPlansSuccessState());
    }).catchError((error)
    {
      print(
        "Error happens while get plans, "
            "error is : ${error.toString()}",
      );
      emit(GetAllPlansFailureState());
    });
  }

}