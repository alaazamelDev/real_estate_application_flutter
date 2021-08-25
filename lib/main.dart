import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/widgets/main/main_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBgColor,
        primaryColor: kPrimaryColor,
        canvasColor: kBgColor,
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: MainSection(),
    );
  }
}
