import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp_screen/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Text("OTP Verification", style: headingStyle),
            Text("We sent your code to +234 809 416 ****"),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            OTPForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            GestureDetector(
              onTap: () {
                // Resend your OTP
              },
              child: Text(
                "Resend OTP",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30), // Because we allow user 30seconds
          builder: (context, value, child) => Text(
            "${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
