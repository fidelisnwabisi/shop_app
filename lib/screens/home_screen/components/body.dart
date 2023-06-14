import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              children: [
                Container(
                  width:
                      SizeConfig.screenWidth * 0.6, // 60% of our screen width
                  height: 50,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration:
                        InputDecoration(enabledBorder: InputBorder.none),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
