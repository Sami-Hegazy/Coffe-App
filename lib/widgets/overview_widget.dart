import 'package:flutter/material.dart';

class OverviewWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgPath;

  const OverviewWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // height: size.height * 0.07,
          // width: size.width * 0.1,
          decoration: BoxDecoration(
            color: const Color(0xffFFF4E1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(imgPath),
        ),
        SizedBox(width: size.width * 0.05),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
