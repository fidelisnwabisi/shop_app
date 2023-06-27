import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/size_config.dart';

import 'cart_items_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: Key(demoCarts[0].product.id.toString()),
          background: Container(
            decoration: BoxDecoration(color: Color(0xFFFFE6E6)),
          ),
          child: CartItemCard(
            cart: demoCarts[0],
          ),
        ),
      ],
    );
  }
}
