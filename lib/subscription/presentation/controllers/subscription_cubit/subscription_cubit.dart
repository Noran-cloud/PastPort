import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_states.dart';

class SubscriptionCubit extends Cubit<SubscriptionStates>
{
  SubscriptionCubit() : super(SubscriptionInitialState());

  static SubscriptionCubit get(context) => BlocProvider.of(context);

}