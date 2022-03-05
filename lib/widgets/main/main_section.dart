import 'package:flutter/material.dart';
import 'package:real_estate/screens/home_screen.dart';
import 'package:real_estate/widgets/main/home_banner.dart';
import 'package:real_estate/widgets/main/icon_info.dart';
import 'package:real_estate/widgets/main/projects.dart';
import 'package:real_estate/widgets/main/recommondations.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView  (
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations()
          ],
        ),
      ),
    );
  }
}
