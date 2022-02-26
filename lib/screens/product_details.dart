import 'package:ecommerce_product/components/carousel_images.dart';
import 'package:ecommerce_product/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Product productShow;
  const ProductDetails({
    Key? key,
    required this.productShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselImages(listImages: productShow.pathImages),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _detailsProduct,
          ),
        ],
      ),
    );
  }

  /// Retorna um Widget com os Detalhes do Produto Configurado
  Widget get _detailsProduct {
    return Column(
      children: [
        Text(productShow.brand),
        Text(productShow.name),
        Text(productShow.description),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                    "${productShow.currency} ${productShow.price.toStringAsFixed(2)}"),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: Text(
                      "${productShow.percentageDiscount.toStringAsFixed(0)} %"),
                ),
              ],
            ),
            Text(productShow.price.toStringAsFixed(2)),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 16),
          color: Colors.grey[200],
          height: 60,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          child: CupertinoButton.filled(
            child: Row(
              // Row ocupa o menor tamanho possivel
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
                Text("Add to cart"),
              ],
            ),
            // TODO: adicionar Função no Botão
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
