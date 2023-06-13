import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
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
        child: Column(
          children: [
            Text("OTP Verification", style: headingStyle),
            Text("We sent your code to +234 809 416 ****"),
            buildTimer(),
            OTPForm()
          ],
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

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              autocorrect: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
