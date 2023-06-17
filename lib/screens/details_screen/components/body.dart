import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ProductImage(product: product);
  }
}

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[0]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildSmallPreview()],
        )
      ],
    );
  }

  Container buildSmallPreview() {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenHeight(8)),
      height: getProportionateScreenWidth(48),
      width: getProportionateScreenWidth(48),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kPrimaryColor),
      ),
      child: Image.asset(widget.product.images[0]),
    );
  }
}
