import 'package:flutter/material.dart';

class InputQuantity extends StatefulWidget {
  const InputQuantity({
    Key? key,
  }) : super(key: key);

  @override
  State<InputQuantity> createState() => _InputQuantityState();
}

class _InputQuantityState extends State<InputQuantity> {
  int _quantityItems = 1;

  @override
  Widget build(BuildContext context) {
    // Obtem o Theme do APP
    final themeApp = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: InkWell(
              onTap: () =>
                  setState(() => _quantityItems != 1 ? _quantityItems-- : 1),
              onLongPress: () => setState(() => _quantityItems = 1),
              child: Icon(
                Icons.remove_rounded,
                color: themeApp.colorScheme.primary,
              ),
            ),
          ),
          Text(
            _quantityItems.toString(),
            style: themeApp.textTheme.headline6!.copyWith(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              splashColor: Colors.black,
              onTap: () => setState(() => _quantityItems++),
              onLongPress: () => setState(() => _quantityItems += 5),
              child: Icon(
                Icons.add_rounded,
                color: themeApp.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
