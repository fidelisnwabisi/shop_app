import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Complete Profile",
            style: headingStyle,
          ),
          Text(
            "Complete your details or continue \nwith Social Media",
            textAlign: TextAlign.center,
          ),
          CompleteProfileForm()
        ],
      ),
    );
  }
}
