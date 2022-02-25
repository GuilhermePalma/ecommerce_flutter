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
                icon: const Icon(
                  Icons.close_rounded,
                  color: Color.fromRGBO(182, 188, 200, 1),
                ),
              ),
            ),
          ),
          ...listCategories
              .map((itemDrawer) => ListTile(
                    title: Text(
                      itemDrawer,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 17),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
