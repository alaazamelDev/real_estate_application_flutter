import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            color: kDarkColor.withOpacity(0.1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build a great future \nfor all of us',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CONTACT US',
                    style: TextStyle(
                      color: kDarkColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: Responsive.isMobile(context)
                          ? kDefaultPadding
                          : kDefaultPadding * 2,
                      vertical: Responsive.isMobile(context)
                          ? kDefaultPadding / 2
                          : kDefaultPadding,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
