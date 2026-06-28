import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/send_code_cubit/code_cubit.dart';
import 'package:pastport/authentication/presentation/widgets/check_verification_code_screen_widgets/content_of_check_verification_code_screen.dart';
import 'package:pastport/authentication/presentation/widgets/shape_of_verification_container.dart';


class CheckVerificationCodeScreen extends StatelessWidget {
  const CheckVerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SendCodeCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            left: 20.0,
            top: 48.0,
            bottom: 20,
          ),
          child: ShapeOfVerificationContainer(
            widget: ContentOfCheckVerificationCodeScreen(),
          ),
        ),
      ),
    );
  }
}
