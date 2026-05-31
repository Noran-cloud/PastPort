abstract class ProfileStates{}

class ProfileInitialState extends ProfileStates{}

class GetProfileLoadingState extends ProfileStates{}
class GetProfileSuccessState extends ProfileStates{}
class GetProfileFailureState extends ProfileStates{}

class UpdateProfileLoadingState extends ProfileStates{}
class UpdateProfileSuccessState extends ProfileStates{}
class UpdateProfileFailureState extends ProfileStates{}

class DeleteProfileLoadingState extends ProfileStates{}
class DeleteProfileSuccessState extends ProfileStates{}
class DeleteProfileFailureState extends ProfileStates{}

class GetProfileImageLoadingState extends ProfileStates{}
class GetProfileImageSuccessState extends ProfileStates{}
class GetProfileImageFailureState extends ProfileStates{}