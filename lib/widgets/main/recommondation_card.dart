import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/recommendation.dart';

class RecmmondationCard extends StatelessWidget {
  const RecmmondationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(recommendation.image!),
              radius: 30,
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.white),
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            recommendation.text!,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
