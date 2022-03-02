import 'package:flutter/material.dart';
import 'package:streaming_app/utilities/constants.dart';

import '../utilities/colors.dart';

class CastCard extends StatelessWidget {
  const CastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 186,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
