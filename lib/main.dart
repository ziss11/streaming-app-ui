import 'package:flutter/material.dart';
import 'package:streaming_app/pages/detail_page.dart';
import 'package:streaming_app/pages/home_page.dart';
import 'package:streaming_app/utilities/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Streaming App',
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: primaryColor,
      ),
      home: const HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case DetailPage.routeName:
            return MaterialPageRoute(builder: (_) => const DetailPage());
          default:
            return MaterialPageRoute(
              builder: (_) {
                return const Scaffold(
                  body: Center(
                    child: Text('Page not found :('),
                  ),
                );
              },
            );
        }
      },
    );
  }
}
