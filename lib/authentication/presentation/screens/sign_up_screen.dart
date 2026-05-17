import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastport/authentication/presentation/auth_utils/clipping_path_helpers/double_fold_clipper.dart';
import 'package:pastport/authentication/presentation/controllers/sign_up_cubit/sign_up_cubit.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/container_of_sign_up_screen.dart';
import 'package:pastport/authentication/presentation/widgets/sign_up_screen_widgets/shadow_of_sign_up_container.dart';
import 'package:pastport/core/extensions/helper_extension.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignUpCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ShadowOfSignUpContainer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: 48,
                          bottom: 20,
                        ),
                        child: SizedBox(
                          height: context.height, // 🔥 الحل هنا
                          child: ClipPath(
                            clipper: DoubleFoldClipper(),
                            child: ContainerOfSignUpScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}