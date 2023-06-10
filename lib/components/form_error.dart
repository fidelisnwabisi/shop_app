import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenHeight(14),
        ),
        SizedBox(width: getProportionateScreenHeight(10)),
        Text(error)
      ],
    );
  }
}
