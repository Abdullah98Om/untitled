import 'package:flutter/material.dart';

import 'profile_comment_widget.dart';

class CommentWidget extends StatelessWidget {
  final String img, name, desc;
  const CommentWidget(
      {super.key, required this.img, required this.name, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // img
        ProfileCommentWidget(
          img: img,
          width: 45,
          height: 45,
        ),

        const SizedBox(width: 13),
        // comment
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: '$name  ',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: desc,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "12 h",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.3)),
                ),
                const SizedBox(width: 18),
                Text(
                  "3 likes",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.3)),
                ),
                const SizedBox(width: 18),
                Text(
                  "Reply",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.3)),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 22),
      ],
    );
  }
}
