import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address:',
          text: 'Station Street 5',
        ),
        buildContactInfo(
          title: 'City:',
          text: 'Liverpool',
        ),
        buildContactInfo(
          title: 'Country:',
          text: 'England',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'email@myemail.com',
        ),
        buildContactInfo(
          title: 'Mobile:',
          text: '+47 362 785 954',
        ),
        buildContactInfo(
          title: 'Website:',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String text, required String title}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
          Text('$text')
        ],
      ),
    );
  }
}
