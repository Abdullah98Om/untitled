import 'package:flutter/material.dart';
import 'package:untitled/core/routers/routers_name.dart';
import '../../../core/theme/app_color.dart';
import 'profile_comment_widget.dart';
import 'profile_with_interer_comment_widget.dart';

class ActivitiesWidget extends StatelessWidget {
  final int? index;
  const ActivitiesWidget({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (index == 0)
          const ProfileWithIntererCommentWidget(
              focus: true,
              comment: "haha, looks very fun 😂",
              img:
                  "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 5; i++)
              InkWell(
                onTap: () {
                  if (index == null) {
                    Navigator.pushNamed(context, RoutesName.activitiesUser);
                  }
                },
                child: index != i
                    ? Stack(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(right: 16, bottom: 8),
                            child: const ProfileCommentWidget(
                                width: 37,
                                height: 37,
                                img:
                                    "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                          ),
                          if (i % 2 == 0)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColor.secondryColor),
                                child: const Text.rich(
                                  TextSpan(
                                    text: '18',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: "likes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ],
                      )
                    : SizedBox(
                        width: 37,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.backgroundColor,
                          ),
                        ),
                      ),
              ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 38,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "+268",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ],
    );
  }
}
