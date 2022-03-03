import 'package:flutter/material.dart';
import 'package:streaming_app/utilities/colors.dart';
import 'package:streaming_app/utilities/constants.dart';
import 'package:streaming_app/utilities/text_style.dart';
import 'package:streaming_app/widgets/movie_card.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize _appBar() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(105),
        child: AppBar(
          backgroundColor: primaryColor,
          toolbarHeight: 105,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/menu_icon.png',
                    width: 18,
                    height: 14,
                  ),
                  Image.asset(
                    'images/profile_image.png',
                    width: 45,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget _content() {
      final movieList = [
        const MovieCard(
          image: 'images/medium_poster1.png',
          name: 'Free Guy',
          category: 'Comedy',
        ),
        const MovieCard(
          image: 'images/medium_poster2.png',
          name: 'The Dark Knight',
          category: 'Action',
        ),
        const MovieCard(
          image: 'images/medium_poster3.png',
          name: 'Guns Akimbo',
          category: 'Comedy',
        ),
      ];

      return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'Coming Soon',
                style: kHeading6,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Image.asset(
                'images/big_poster.png',
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'A Quiet Place II',
                style: kHeading6,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'April 2021',
                style: kSubtitle,
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'Top Movie',
                style: kHeading6,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 241,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin / 2,
                ),
                children: movieList
                    .map(
                      (movieCard) => movieCard,
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget _bottomNavBar() {
      Widget _navBarIcon(String icon, String label, Color color) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 17,
              height: 20,
              color: color,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: kSubtitle.copyWith(
                fontWeight: semibold,
                fontSize: 10,
                color: color,
              ),
            ),
          ],
        );
      }

      return SizedBox(
        height: 81,
        child: BottomAppBar(
          color: primaryColor,
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _navBarIcon(
                'images/home_icon.png',
                'Home',
                yellowColor,
              ),
              _navBarIcon(
                'images/search_icon.png',
                'Home',
                greyColor,
              ),
              _navBarIcon(
                'images/person_icon.png',
                'Home',
                greyColor,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: _appBar(),
      body: _content(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }
}
