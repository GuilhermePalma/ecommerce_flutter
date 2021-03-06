import 'package:flutter/material.dart';

class CustomArrowButton extends StatelessWidget {
  final IconData iconShow;
  final void Function() onClick;

  const CustomArrowButton({
    Key? key,
    required this.onClick,
    required this.iconShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Icon(
        iconShow,
        color: const Color.fromRGBO(29, 32, 37, 1),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.grey,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
