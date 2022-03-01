import 'package:ecommerce_product/models/product.dart';
import 'package:flutter/material.dart';

class ProductCartItem extends StatelessWidget {
  final Product product;

  const ProductCartItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _totalPrice = product.priceWithDiscount * product.quantity;
    return ListTile(
      title: Text(
        product.name,
        style: TextStyle(
          color: Colors.grey[700],
          fontFamily: "KumbhSans",
        ),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${product.currency} ${product.priceWithDiscount.toStringAsFixed(2)} x ${product.quantity}",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "${product.currency} ${_totalPrice.toStringAsFixed(2)}",
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(product.pathImages.elementAt(0)),
      ),
      trailing: const Icon(Icons.delete_rounded),
    );
  }
}
