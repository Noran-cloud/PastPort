//
// class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
//   @override
//   void userLoginWithEmailAndPassword(String mail, String pass) async {
//     await Dio().post(
//         "${Constants.apiDomain}${Constants.LOGIN}",
//         data: {
//           "email" : mail,
//           "password" : pass,
//         },
//     ).then((value)
//     {
//       print(RegisterModel.fromJson(value.data));
//     }).catchError((onError)
//     {
//       print("------------------Error happens while logging in------------------");
//       print(onError.toString());
//     });
//   }
//
//   @override
//  void registerNewUser() async{
//     await Dio().post(
//       "${Constants.apiDomain}${Constants.REGISTER}",
//       data: {
//         "email": "f4107901@gmail.com",
//         "password": "Fatma1492004**",
//         "confirmPassword": "Fatma1492004**",
//         "firstName": "Tota",
//         "lastName": "Elsayed"
//       },
//     ).then((value)
//     {
//       print(RegisterModel.fromJson(value.data));
//     }).catchError((onError)
//     {
//       print("------------------Error happens while registering------------------");
//       print(onError.toString());
//     });
//   }
//
//   @override
//   void validateEmail() async{
//     await Dio().post(
//       "${Constants.apiDomain}${Constants.VERIFYEMAIL}",
//       data: {
//         "userId": "93b07719-4bad-4caa-88e7-0e427c185d22",
//         "code": "484897"
//       },
//     ).then((value)
//     {
//       print(VerificationModel.fromJson(value.data));
//     }).catchError((onError)
//     {
//       print("------------------Error happens while validating code------------------");
//       print(onError.toString());
//     });
//   }
//
//   @override
//   void resetNewPassword() async{
//     await Dio().post(
//       "${Constants.apiDomain}${Constants.RESETPASS}",
//       data: {
//         "email": "batta4doha@gmail.com",
//         "code": "30206",
//         "newPassword": "Fatma2021*****",
//         "confirmPassword": "Fatma2021*****"
//       },
//     ).then((value)
//     {
//       print(VerificationModel.fromJson(value.data));
//     }).catchError((onError)
//     {
//       print("------------------Error happens while reset pass------------------");
//       print(onError.toString());
//     });
//   }
//
//   @override
//   void sendPasswordResetEmail() async{
//     await Dio().post(
//       "${Constants.apiDomain}${Constants.FORGETPASS}",
//       data: {
//         "email": "batta4doha@gmail.com"
//       },
//     ).then((value)
//     {
//       print(VerificationModel.fromJson(value.data));
//     }).catchError((onError)
//     {
//       print("------------------Error happens while send code for forget pass------------------");
//       print(onError.toString());
//     });
//   }
// }
