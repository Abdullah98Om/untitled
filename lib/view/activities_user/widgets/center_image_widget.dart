import 'package:flutter/material.dart';

class CenterImageWidget extends StatelessWidget {
  const CenterImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      width: MediaQuery.sizeOf(context).width,
      height: 497,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(49),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://elwasfa.com/wp-content/uploads/2022/07/image1.jpg"))),
    );
  }
}
