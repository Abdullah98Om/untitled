import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/util/constant.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 44 * 0.5, sigmaY: 44 * 0.5),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 53),
            decoration: BoxDecoration(
                color: AppColor.backgroundColor.withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 24),
                      spreadRadius: -30,
                      blurRadius: 124,
                      color: Colors.black.withOpacity(0.32))
                ]),
            child: SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImage.homeIcon),
                        const SizedBox(width: 53),
                        Image.asset(AppImage.saveedIcon)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(AppImage.settingIcon),
                        const SizedBox(width: 53),
                        ClipOval(
                            child: Image.network(
                                width: 43,
                                "https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg=",
                                fit: BoxFit.cover)),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
