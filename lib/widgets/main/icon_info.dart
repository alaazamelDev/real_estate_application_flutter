import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'projects',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '13K+',
                        label: 'stars',
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'clients',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.location_on,
                  text: '139+',
                  label: 'projects',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.public,
                  text: '30+',
                  label: 'countries',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.star,
                  text: '13K+',
                  label: 'stars',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(height: kDefaultPadding / 2),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.white),
        )
      ],
    );
  }
}
