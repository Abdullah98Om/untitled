import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/util/constant.dart';

class LikeCommentShareWidget extends StatelessWidget {
  const LikeCommentShareWidget({super.key, required this.like});
  final bool like;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // share
        Image.asset(AppImage.vectorIcon),
        const SizedBox(height: 40),
        //comment
        Image.asset(AppImage.commentIcon),
        const SizedBox(height: 24),
        // like
        Stack(
          alignment: Alignment.center,
          children: [
            if (!like)
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10 * 0.5,
                    sigmaY: 10 * 0.5,
                  ),
                  child: Container(
                    width: 59,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
            Container(
              width: 59,
              height: 80,
              decoration: BoxDecoration(
                color: like ? AppColor.redColor : Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImage.likeIcon),
                  const SizedBox(height: 8),
                  const Text(
                    "4.2K",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
