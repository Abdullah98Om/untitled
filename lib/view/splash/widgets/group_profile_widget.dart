import 'package:flutter/material.dart';

class GroupProfileWidget extends StatelessWidget {
  final double size, location;
  const GroupProfileWidget(
      {super.key, required this.size, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.translate(
          offset: Offset(location, 0),
          child: Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80",
                ),
                fit: BoxFit.cover, // يحافظ على ملء الدائرة بدون قص
              ),
            ),
          ),
        ),
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                "https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg=",
              ),
              fit: BoxFit.cover, // يحافظ على ملء الدائرة بدون قص
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-location, 0), // تحريك فوق الأولى
          child: Container(
            width: size,
            height: size,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  "https://elwasfa.com/wp-content/uploads/2022/07/image1.jpg",
                ),
                fit: BoxFit.cover, // يحافظ على ملء الدائرة بدون قص
              ),
            ),
          ),
        ),
      ],
    );
  }
}
