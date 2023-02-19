import 'package:ecommerce_product/components/custom_cart_icon.dart';
import 'package:ecommerce_product/components/custom_drawer.dart';
import 'package:ecommerce_product/data/dummy_data.dart';
import 'package:ecommerce_product/models/product.dart';
import 'package:ecommerce_product/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<Product> _productsCart = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sneakers"),
        actions: [
          // Icones do Menu Superior
          CustomCartIcon(productsCart: _productsCart),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: InkWell(
              onTap: () {
                // TODO: Criar uma Tela para o Perfil
                print("Click in Profile Pick");
              },
              child: Image.asset(
                "assets/images/image-avatar.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: ProductDetailsScreen(
        productShow: dummyProduct,
        addProductToCart: (product) =>
            setState(() => _productsCart.add(product)),
      ),
    );
  }
}
