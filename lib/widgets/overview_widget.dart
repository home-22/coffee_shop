import 'package:flutter/material.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imagePath})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffFFF4E1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(imagePath),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        )
      ],
    );
  }
}
