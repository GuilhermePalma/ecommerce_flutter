import 'package:ecommerce_product/components/custom_drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
                  fontSize: 22),
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

      home: Scaffold(
        appBar: AppBar(
          title: const Text("sneakers"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 20),
              child: Icon(Icons.shopping_cart_outlined),
            ),
            Padding(
              // TODO: Mudar para uma Foto de Perfil Redonda
              padding: EdgeInsets.only(right: 24),
              child: Icon(Icons.people),
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        body: const Center(
          child: Text("Ecommerce Page Initial"),
        ),
      ),
    );
  }
}
