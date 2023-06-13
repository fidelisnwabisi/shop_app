import 'package:flutter/material.dart';

import 'components/body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static String routeName = "/otp_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verifivation"),
      ),
      body: Body(),
    );
  }
}
