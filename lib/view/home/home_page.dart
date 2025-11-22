import 'package:flutter/material.dart';
import 'widgets/post_widget.dart';
import 'widgets/stories_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List peopleList = [
      {
        "image": "https://elwasfa.com/wp-content/uploads/2022/07/image1.jpg",
        "name": "Julien"
      },
      {
        "image":
            "https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg=",
        "name": "Samer"
      },
      {
        "image":
            "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
        "name": "Abdullah"
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          // Stories
          StoriesWidget(peopleList: peopleList),

          // Posts
          const PostWidget(
              showDetailes: false,
              like: true,
              img: "https://elwasfa.com/wp-content/uploads/2022/07/image1.jpg"),
          const PostWidget(
              showDetailes: true,
              like: false,
              img:
                  "https://treeofskills.com/wp-content/uploads/2021/05/passionate-black-male-singer-performing-against-red-570x658.jpg"),

          const PostWidget(
              showDetailes: false,
              like: false,
              img:
                  "https://i1.daumcdn.net/thumb/C264x200/?fname=https://t1.daumcdn.net/cfile/tistory/992D17425B7D78CE30"),
          const SizedBox(height: 130)
        ],
      ),
    );
  }
}
