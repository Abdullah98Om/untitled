import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class IntererCommentWidget extends StatelessWidget {
  final String comment;
  const IntererCommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.backgroundColor,
      ),
      child: Text(comment,
          style: const TextStyle(
              color: Color(0xff2B2B2B),
              fontSize: 16,
              fontWeight: FontWeight.w500)),
    );
  }
}
