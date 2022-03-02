import 'package:flutter/material.dart';
import 'package:streaming_app/pages/detail_page.dart';
import 'package:streaming_app/utilities/constants.dart';

import '../utilities/text_style.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final String name;
  final String category;
  const MovieCard({
    Key? key,
    required this.image,
    required this.name,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailPage.routeName,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 120,
              height: 190,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              name,
              style: kTitle,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              category,
              style: kSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
