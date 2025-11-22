import 'package:flutter/material.dart';

class ProfileCommentWidget extends StatelessWidget {
  final String img;
  final double width, height;
  const ProfileCommentWidget(
      {super.key,
      required this.img,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child:
          Image.network(width: width, height: height, img, fit: BoxFit.cover),
    );
  }
}
