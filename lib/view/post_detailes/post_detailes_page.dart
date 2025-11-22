import 'package:flutter/material.dart';
import 'package:untitled/core/theme/app_color.dart';
import '../splash/widgets/group_profile_widget.dart';
import 'widgets/activities_widget.dart';
import 'widgets/appbar_post_detail_widget.dart';
import 'widgets/like_comment_share_widget.dart';
import 'widgets/profile_with_interer_comment_widget.dart';
import 'widgets/view_comments_widget.dart';

class PostDetailesPage extends StatelessWidget {
  const PostDetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://elwasfa.com/wp-content/uploads/2022/07/image1.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppBarPostDetailWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  Comments && Like , Share , Comment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Comments
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const ProfileWithIntererCommentWidget(
                            focus: false,
                            comment: "haha, looks very fun 😂",
                            img:
                                "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg"),
                        const ProfileWithIntererCommentWidget(
                            focus: true,
                            comment: "I love this",
                            img:
                                "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg"),
                        Container(
                            height: 48,
                            padding: const EdgeInsets.only(left: 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.secondryColor),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "@Replay",
                                  style: TextStyle(
                                      color: AppColor.backgroundColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 12),
                                GroupProfileWidget(size: 25, location: 7),
                              ],
                            )),
                      ],
                    ),

                    const LikeCommentShareWidget(like: false),
                  ],
                ),
                const SizedBox(height: 23),
                const ViewComments(),
                const SizedBox(height: 28),
                const ActivitiesWidget()
              ],
            )
          ],
        ),
      )),
    );
  }
}
