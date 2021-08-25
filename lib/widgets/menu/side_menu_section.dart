import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/widgets/menu/contact_info.dart';
import 'package:real_estate/widgets/menu/download_button.dart';
import 'package:real_estate/widgets/menu/goals.dart';
import 'package:real_estate/widgets/menu/logo.dart';
import 'package:real_estate/widgets/menu/social_media_icon.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: kDefaultPadding),
                    DownloadButton(),
                    SocialMediaIcon()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
