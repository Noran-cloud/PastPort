import 'package:flutter/material.dart';
import 'package:pastport/core/extensions/helper_extension.dart';
import 'package:pastport/core/utils/app_images.dart';

class SettingBackground extends StatelessWidget {
  const SettingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: context.height * 0.3,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  Assets.settingBackground
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: Color(0xff8B7355),
          ),
        ),
        Positioned(
          bottom: -40,
          left: context.width * 0.5 - 45,
          child: Container(
            height: 80,
            width: 80,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.firstOnboardingImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
