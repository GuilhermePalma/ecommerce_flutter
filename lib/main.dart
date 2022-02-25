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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sneakers"),
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
        body: const Center(
          child: Text("Ecommerce Page Initial"),
        ),
      ),
    );
  }
}
