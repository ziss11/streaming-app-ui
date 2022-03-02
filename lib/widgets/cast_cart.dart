import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:streaming_app/utilities/constants.dart';

import '../utilities/colors.dart';
import '../utilities/text_style.dart';

class CastCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;

  const CastCard({
    Key? key,
    required this.image,
    required this.name,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 190,
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin / 2,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 70,
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kTitle.copyWith(
                  fontWeight: semibold,
                  fontSize: 14,
                ),
              ),
              Text(
                role,
                style: kSubtitle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
