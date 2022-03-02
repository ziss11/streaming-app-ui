import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:streaming_app/utilities/colors.dart';
import 'package:streaming_app/widgets/cast_cart.dart';

import '../utilities/constants.dart';
import '../utilities/text_style.dart';

class DetailPage extends StatelessWidget {
  static const routeName = 'detail-page';
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _imagePoster() {
      return Stack(
        children: [
          Image.asset(
            'images/detail_image.png',
            height: 440,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: 168,
            margin: const EdgeInsets.only(top: 272),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  secondaryColor.withOpacity(0),
                  primaryColor.withOpacity(0.85),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: secondaryColor,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget _content() {
      final castList = [
        const CastCard(
          image: 'images/cast_image1.png',
          name: 'Henry Cavill',
          role: 'Geralt',
        ),
        const CastCard(
          image: 'images/cast_image2.png',
          name: 'Freeya Alan',
          role: 'Ciri',
        ),
      ];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: defaultMargin,
          ),
          Text(
            'The Witcher 2021',
            style: kHeading5,
            textAlign: TextAlign.center,
          ),
          Text(
            'Sci-Fiction',
            style: kSubtitle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Align(
            alignment: Alignment.center,
            child: RatingBar.builder(
              itemSize: 20,
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: yellowColor,
              ),
              unratedColor: yellowColor.withOpacity(0.5),
              onRatingUpdate: (rating) {},
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: yellowColor,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: greyColor,
                ),
                child: const Icon(
                  Icons.favorite,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
            ),
            child: Text(
              'Cast',
              style: kHeading6,
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin / 2,
              ),
              physics: const BouncingScrollPhysics(),
              children: castList.map((cast) => cast).toList(),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          _imagePoster(),
          _content(),
        ],
      ),
    );
  }
}
