import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/util/constant.dart';

class SaveIconWidget extends StatelessWidget {
  const SaveIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(57),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 14 * 0.5, sigmaY: 14 * 0.5),
              child: Container(
                height: 57,
                width: 57,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle),
              )),
        ),
        Container(
          height: 57,
          width: 57,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.transparent),
          child: Image.asset(AppImage.frameIcon),
        )
      ],
    );
  }
}
