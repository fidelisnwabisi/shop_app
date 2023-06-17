import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details_screen/components/custom_app_bar.dart';
import 'package:shop_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      // body: Body(product: agrs.product),
    );
  }
}

// But we also need to pass our product index to our details screen
// And we use name route so we need to create an argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
