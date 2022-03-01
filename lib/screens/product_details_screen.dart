import 'package:ecommerce_product/components/carousel_images.dart';
import 'package:ecommerce_product/components/input_quantity.dart';
import 'package:ecommerce_product/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product productShow;
  final void Function(Product) addProductToCart;

  const ProductDetailsScreen({
    Key? key,
    required this.productShow,
    required this.addProductToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselImages(listImages: productShow.pathImages),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _detailsProduct(context),
          ),
        ],
      ),
    );
  }

  /// Retorna um Widget com os Detalhes do Produto Configurado
  Widget _detailsProduct(BuildContext context) {
    // Obtem os Itens utilizados mais de uma vez (Evita chamadas desnecessarias)
    final Color _primaryColor = Theme.of(context).colorScheme.primary;
    final Color _colorSubtitle = Colors.grey[600]!;
    final TextStyle _styleTitle = Theme.of(context).textTheme.headline6!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            productShow.brand.toUpperCase(),
            style: _styleTitle.copyWith(
              fontSize: 13,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            productShow.name,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            productShow.description,
            style: TextStyle(
              color: _colorSubtitle,
              fontFamily: "KumbhSans",
            ),
          ),
        ),
        Row(
          /// Engloba a parte do Prço
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "${productShow.currency} ${productShow.priceWithDiscount.toStringAsFixed(2)}",
                  style: _styleTitle,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  decoration: BoxDecoration(
                    color: _primaryColor.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Text(
                    "${productShow.percentageDiscount.toStringAsFixed(0)} %",
                    style: TextStyle(
                      fontFamily: "KumbhSans",
                      fontWeight: FontWeight.w700,
                      color: _primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "${productShow.currency} ${productShow.price.toStringAsFixed(2)}",
              style: TextStyle(
                fontFamily: "KumbhSans",
                color: _colorSubtitle,
                decoration: TextDecoration.lineThrough,
                fontSize: 14,
              ),
            ),
          ],
        ),
        // TODO: Integrar Função que Obtenha a Quantidade de Itens
        const InputQuantity(),
        SizedBox(
          width: double.infinity,
          child: CupertinoButton.filled(
            /// Define o Layout do Cupertino Button
            child: Row(
              // Row ocupa o menor tamanho possivel
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
                Text(
                  "Add to cart",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            onPressed: () => addProductToCart(productShow),
          ),
        ),
      ],
    );
  }
}
