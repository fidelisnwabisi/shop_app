import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = "/details_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // By default the background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: RoundedIconbtn(),
      ),
    );
  }
}

class RoundedIconbtn extends StatelessWidget {
  const RoundedIconbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Colors.white),
        onPressed: () {},
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}

// But we also need to pass our product index to our details screen
// And we use name route so we need to create an argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
