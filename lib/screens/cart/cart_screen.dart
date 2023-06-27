import 'package:flutter/material.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/screens/cart/components/checkout_card.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
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
            "${demoCarts.length} Items",
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
