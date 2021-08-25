import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/download.svg'),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(
              'Download Brochure',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
