import 'package:ecommerce_product/models/product.dart';
import 'package:flutter/material.dart';

class CustomCartIcon extends StatelessWidget {
  final List<Product> productsCart;
  const CustomCartIcon({
    Key? key,
    required this.productsCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 20),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(Icons.shopping_cart_outlined),
          ),
          if (productsCart.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                width: 18,
                height: 16,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: FittedBox(
                    child: Text(
                      productsCart.length.toString(),
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
