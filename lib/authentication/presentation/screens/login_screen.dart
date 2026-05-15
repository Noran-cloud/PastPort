import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:pastport/authentication/presentation/controllers/login_cubit/login_states.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/bottom_part_login_screen.dart';
import 'package:pastport/authentication/presentation/widgets/login_screen_widgets/top_part_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit()..loginUserWithEmailAndPassword(mail: "batta4doha@gmail.com", pass: "Fatma1492004**"),
      child: BlocConsumer <LoginCubit, LoginStates>(
        builder: (BuildContext context, LoginStates state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 48,
                    bottom: 20,
                  ),
                  child: Column(
                    children: [
                      TopPartLoginScreen(),
                      BottomPartLoginScreen(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (BuildContext context, LoginStates state) {  },
      ),
    );
  }
}