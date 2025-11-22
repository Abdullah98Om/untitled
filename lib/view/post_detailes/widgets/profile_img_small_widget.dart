import 'package:flutter/material.dart';

import '../../../core/widgets/drow_gradient_border_painter.dart';

class ProfileImgSmall extends StatelessWidget {
  const ProfileImgSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.only(right: 16),
          child: CustomPaint(
            painter: GradientBorderPainter(),
            child: Container(
              height: 53,
              width: 53,
              margin: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              child: ClipOval(
                  child: Image.network(
                fit: BoxFit.cover,
                width: 32,
                "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg",
              )),
            ),
          ),
        ),
      ],
    );
  }
}
