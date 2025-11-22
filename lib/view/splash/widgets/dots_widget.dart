import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget(
      {super.key, required this.itemsList, required this.selected});

  final List<Map<String, dynamic>> itemsList;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 6,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < itemsList.length; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: selected == i ? 34 : 8,
                height: 6,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(selected == i ? 1 : 0.5),
                    borderRadius: BorderRadius.circular(10)),
              )
          ],
        ),
      ),
    );
  }
}
