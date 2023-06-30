import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02), // 2%
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith Social Media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05), // 5%
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "By Continuing you confirm that you agree \neith our Terms and Conditions",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
