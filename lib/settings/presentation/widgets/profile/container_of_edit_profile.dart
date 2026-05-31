import 'package:flutter/material.dart';
import 'package:pastport/authentication/presentation/widgets/custom_text_field.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/settings/presentation/controllers/profile_cubit/profile_cubit.dart';
import 'package:pastport/settings/presentation/widgets/profile/custom_appbar_for_profile_screens.dart';

class ContainerOfEditProfile extends StatelessWidget {
  const ContainerOfEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 27.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(33),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(4, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          CustomAppbarForProfileScreens(),
          Row(
            children: [
              CustomTextField(
                height: 33.0,
                radius: 6,
                isFilled: false,
                keyboardType: TextInputType.text,
                controller: ProfileCubit.get(context).fNameController,
              ),
              CustomTextField(
                hint: Text("Fatma"),
                height: 33.0,
                radius: 6,
                isFilled: false,
                keyboardType: TextInputType.text,
                controller: ProfileCubit.get(context).lNameController,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
