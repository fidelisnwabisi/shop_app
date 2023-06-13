import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightolor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E)],
);
const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0x77757575);

const kAnimationDuration = Duration(microseconds: 200);

final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Password don't Match";
const String kNameNullError = "Please Enter your Name";
const String kPhoneNumberNullError = "Please Enter your PhoneNumber";
const String kAddressNullError = "Please Enter your Address";
