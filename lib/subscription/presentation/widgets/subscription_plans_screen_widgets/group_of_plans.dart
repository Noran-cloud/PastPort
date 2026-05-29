import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/subscription/data/models/subscription_plan_model.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_cubit.dart';
import 'package:pastport/subscription/presentation/controllers/subscription_cubit/subscription_states.dart';
import 'package:pastport/subscription/presentation/widgets/subscription_plans_screen_widgets/plan_card_widget.dart';

class GroupOfPlans extends StatelessWidget {
  const GroupOfPlans({super.key, required this.subscriptionPlans});

  final List<SubscriptionPlanModel> subscriptionPlans;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: subscriptionPlans.length,
      itemBuilder: (context, index) => listItem(subscriptionPlans[index]),
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 16.0,),);
  }

  Widget listItem(SubscriptionPlanModel model)
  {
    return PlanCardWidget(
      color: AppColors.lightRegularTextColor.withValues(alpha: .6),
      planTitle: model.name,
      planDescription: model.description,
      price: model.price,
      currency: model.currency,
    );
  }
}

