import 'package:ecommerce_product/components/product_cart_item.dart';
import 'package:ecommerce_product/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalCart extends StatelessWidget {
  final List<Product> productsCart;

  const ModalCart({Key? key, required this.productsCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeHeadline6 = Theme.of(context).textTheme.headline6;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 8, 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cart",
                  style: themeHeadline6!.copyWith(fontSize: 18),
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 16),
            if (productsCart.isNotEmpty)
              ...productsCart
                  .map((productItem) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ProductCartItem(product: productItem),
                      ))
                  .toList()
            else
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Your Cart is Empty",
                  style: themeHeadline6.copyWith(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              width: double.infinity,
              child: CupertinoButton.filled(
                child: Text(productsCart.isNotEmpty ? "Checkout" : "Close"),
                onPressed: () {
                  Navigator.pop(context);
                  if (productsCart.isNotEmpty) {
                    // TODO: Implementar Tela de Checkout
                    final scaffoldManager = ScaffoldMessenger.of(context);

                    // Configura a SnackBar
                    final snackBarCheckout = SnackBar(
                      content: const Text("Purchase Finished"),
                      action: SnackBarAction(
                        label: "Ok",
                        onPressed: () => scaffoldManager.clearSnackBars(),
                      ),
                    );
                    // Exibe a SnackBar na Tela
                    scaffoldManager.showSnackBar(snackBarCheckout);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
