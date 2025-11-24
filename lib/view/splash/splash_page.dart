import 'package:flutter/material.dart';
import '../../core/routers/routers_name.dart';
import 'widgets/describtion_widget.dart';
import 'widgets/dots_widget.dart';
import 'widgets/group_profile_widget.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/picture_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Map<String, dynamic>> itemsList = [
    {
      "color": 0xffE5AFAF,
      "title": "Videos",
      "describtion": "Discover the best reels by millions of people",
    },
    {
      "color": 0xffC4BCFF,
      "title": "Movies",
      "describtion": "Discover the best reels by millions of people",
    },
    {
      "color": 0xffC2D8BE,
      "title": "Reels",
      "describtion": "Discover the best reels by millions of people",
    }
  ];
  bool reveseShape = false;
  int selected = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(itemsList[selected]["color"]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 116),
            // img
            PictureWidget(itemsList: itemsList, index: selected),
            const SizedBox(height: 27),

            // media
            const GroupProfileWidget(size: 67, location: 26),
            const SizedBox(height: 22),

            // descriptions
            DescribtionWidget(describtion: itemsList[selected]["describtion"]),
            const SizedBox(height: 28),

            // Dots
            DotsWidget(itemsList: itemsList, selected: selected),
            const SizedBox(height: 42),

            // Next Button
            NextButtonWidget(
              onTap: () {
                if (selected == itemsList.length - 1) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.indexPage, (_) => false);
                } else {
                  setState(() {
                    selected++;
                  });
                }
              },
              value: (selected + 1) / itemsList.length,
              itemsList: itemsList,
            )
          ],
        ));
  }
}
