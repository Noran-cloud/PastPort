abstract class SubscriptionStates{}

class SubscriptionInitialState extends SubscriptionStates{}

class GetAllPlansLoadingState extends SubscriptionStates{}
class GetAllPlansFailureState extends SubscriptionStates{}
class GetAllPlansSuccessState extends SubscriptionStates{}