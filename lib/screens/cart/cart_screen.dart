import 'package:flutter/material.dart';
import 'package:shop_app/models/cart.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCart.length} Items",
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
