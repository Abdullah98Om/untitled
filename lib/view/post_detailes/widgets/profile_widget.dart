import 'package:flutter/material.dart';

import 'profile_img_small_widget.dart';

class ProfileWidget extends StatelessWidget {
  final Color colorText;
  final double opacity;
  const ProfileWidget({super.key, required this.colorText, this.opacity = 0.8});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileImgSmall(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jemma Ray",
              style: TextStyle(
                  fontSize: 18, color: colorText, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 3),
            Text(
              "19 hour ago",
              style: TextStyle(
                  fontSize: 14,
                  color: colorText.withOpacity(opacity),
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
