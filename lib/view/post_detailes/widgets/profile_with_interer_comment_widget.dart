import 'package:flutter/material.dart';
import 'interer_comment_widget.dart';
import 'profile_comment_widget.dart';

class ProfileWithIntererCommentWidget extends StatelessWidget {
  final String img, comment;
  final bool focus;
  const ProfileWithIntererCommentWidget(
      {super.key,
      required this.img,
      required this.focus,
      required this.comment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: focus ? 1 : 0.4,
          child: Row(
            children: [
              ProfileCommentWidget(img: img, width: 45, height: 45),
              const SizedBox(width: 10),
              IntererCommentWidget(comment: comment),
            ],
          ),
        ),
        const SizedBox(height: 21)
      ],
    );
  }
}
