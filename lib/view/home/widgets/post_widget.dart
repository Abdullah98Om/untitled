import 'package:flutter/material.dart';
import '../../../core/routers/routers_name.dart';
import '../../../core/theme/app_color.dart';
import '../../post_detailes/widgets/comment_widget.dart';
import '../../post_detailes/widgets/like_comment_share_widget.dart';
import '../../post_detailes/widgets/profile_widget.dart';
import '../../post_detailes/widgets/save_icon_widget.dart';

class PostWidget extends StatelessWidget {
  final String img;
  final bool like;
  final bool showDetailes;
  const PostWidget(
      {super.key,
      required this.img,
      required this.like,
      required this.showDetailes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesName.postDetailes);
        },
        child: Column(
          children: [
            // post
            Container(
              margin: const EdgeInsets.only(
                top: 16,
                bottom: 10,
              ),
              padding: const EdgeInsets.all(32),
              width: MediaQuery.sizeOf(context).width,
              height: showDetailes ? 538 : 410,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        img,
                      ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left side
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ProfileWidget(colorText: AppColor.backgroundColor),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                margin: const EdgeInsets.only(right: 7),
                                width: i == 0 ? 34 : 8,
                                height: 6,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                        .withOpacity(i == 0 ? 1 : 0.5),
                                    borderRadius: BorderRadius.circular(10)),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                  // right side
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SaveIconWidget(),

                      // Like , Share , Comment
                      LikeCommentShareWidget(like: like)
                    ],
                  )
                ],
              ),
            ),
            if (showDetailes) const SizedBox(height: 4),
            if (showDetailes)
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text.rich(
                    TextSpan(
                      text:
                          'Trying new singing gigs and trying to find a better vocal range and explore different...', // النص العادي
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.6)),
                      children: const [
                        TextSpan(
                          text: ' more', // الكلمة التي تريد تغيير ستايلها
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            if (showDetailes) const SizedBox(height: 19),
            if (showDetailes)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    CommentWidget(
                        name: "Erenyaeger",
                        desc: 'It looks very refreshing ☺️',
                        img:
                            "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg"),
                    SizedBox(height: 22),
                    CommentWidget(
                      name: "Yalenanam",
                      desc: 'You seem to be having fun 🔥',
                      img:
                          "https://i1.daumcdn.net/thumb/C264x200/?fname=https://t1.daumcdn.net/cfile/tistory/992D17425B7D78CE30",
                    ),
                    SizedBox(height: 22),
                    CommentWidget(
                      name: "Edanorman",
                      desc: 'I love this so much! Slay king.',
                      img:
                          "https://treeofskills.com/wp-content/uploads/2021/05/passionate-black-male-singer-performing-against-red-570x658.jpg",
                    ),
                  ],
                ),
              ),
            if (showDetailes) const SizedBox(height: 10),
            // add comment Section
            Container(
              height: 67,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: AppColor.grayLightColor,
                  borderRadius: BorderRadius.circular(19)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // img
                        Container(
                          height: 27,
                          width: 27,
                          decoration: const BoxDecoration(
                            color: AppColor.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                              child: Image.network(
                                  width: 32,
                                  "https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg=",
                                  fit: BoxFit.cover)),
                        ),

                        const SizedBox(width: 17),

                        Text(
                          "Add a comment...",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "(273 Comments)",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
