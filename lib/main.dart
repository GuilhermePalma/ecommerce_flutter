import 'package:ecommerce_product/components/custom_cart_icon.dart';
import 'package:ecommerce_product/components/custom_drawer.dart';
import 'package:ecommerce_product/data/dummy_data.dart';
import 'package:ecommerce_product/models/product.dart';
import 'package:ecommerce_product/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Page',
      debugShowCheckedModeBanner: false,

      /// Definição do Tema do APP
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(255, 125, 26, 1),
          secondary: const Color.fromRGBO(255, 237, 224, 1),
        ),
        fontFamily: "KumbhSans",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontFamily: "KumbhSans",
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
        appBarTheme: AppBarTheme.of(context).copyWith(
          foregroundColor: const Color.fromRGBO(29, 32, 37, 1),
          actionsIconTheme: IconTheme.of(context).copyWith(
            color: const Color.fromRGBO(182, 188, 200, 1),
          ),
          backgroundColor: Colors.white,
          titleTextStyle: ThemeData.light().textTheme.headline6!.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),

      home: const _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage({Key? key}) : super(key: key);

  @override
  State<_MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  List<Product> _productsCart = [];

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
