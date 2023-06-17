import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details_screen/components/custom_app_bar.dart';
import 'package:shop_app/size_config.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      // by default our backgroung is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: arguments.product.rating),
      ),
      body: Body(
        product: arguments.product,
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
