import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/controllers/verification_cubit/verification_cubit.dart';
import 'package:pastport/authentication/presentation/widgets/email_verification_screen_widgets/content_of_email_verification_screen.dart';
import 'package:pastport/authentication/presentation/widgets/shape_of_verification_container.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => VerificationCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            left: 20.0,
            top: 48.0,
            bottom: 20,
          ),
          child: ShapeOfVerificationContainer(
            widget: ContentOfEmailVerificationScreen(),
          ),
        ),
      ),
    );
  }
}
