import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/projects.dart';
import 'package:real_estate/responsive.dart';
import 'package:real_estate/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(height: kDefaultPadding),
        Responsive(
          desktop: buildGridView(
            childAspectRatio: 0.75,
            crossAxisCount: 3,
            itemCount: demoProjects.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          tablet: buildGridView(
            childAspectRatio: 0.75,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            itemCount: demoProjects.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          largeMobile: buildGridView(
            childAspectRatio: 0.75,
            crossAxisCount: 2,
            itemCount: demoProjects.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          mobile: buildGridView(
            childAspectRatio: 0.8,
            crossAxisCount: 1,
            itemCount: demoProjects.length,
            itemBuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
        ),
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
