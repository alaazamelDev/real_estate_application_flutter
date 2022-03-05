import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: kDefaultPadding),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.7),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: kDefaultPadding/2),
          TextButton(
            onPressed: () {},
            child: Text(
              'More details >',
              style: TextStyle(color: kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}
