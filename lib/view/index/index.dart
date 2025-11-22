import 'package:flutter/material.dart';
import 'package:untitled/view/home/home_page.dart';
import '../../core/theme/app_color.dart';
import 'widgets/add_button_widget.dart';
import 'widgets/bottom_nav_widget.dart';
import 'widgets/main_app_bar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexState();
}

class _IndexState extends State<IndexPage> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: mainAppBar(context, selectedIndex),
      body: Stack(
        children: [
          IndexedStack(
            index: selectedIndex,
            children: screens,
          ),
          const BottomNavWidget(),
          const AddButtonWidget()
        ],
      ),
    );
  }
}
