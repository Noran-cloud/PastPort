abstract class SendCodeStates{}

class SendCodeInitialState extends SendCodeStates{}

class VerifyCodeLoadingState extends SendCodeStates{}
class VerifyCodeSuccessState extends SendCodeStates{}
class VerifyCodeFailureState extends SendCodeStates{}