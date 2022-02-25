import 'package:ecommerce_product/data/dummy_data.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> listCategories = dummyCategories;

    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close_rounded),
              ),
            ),
          ),
          ...listCategories
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
