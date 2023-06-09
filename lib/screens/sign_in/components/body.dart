import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffixIcon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your Email and Password \nor continue with Social Media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}
