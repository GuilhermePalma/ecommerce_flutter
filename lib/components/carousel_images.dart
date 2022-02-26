import 'package:ecommerce_product/components/custom_arrow_button.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {
  final List<String> listImages;

  const CarouselImages({
    Key? key,
    required this.listImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: Colors.grey,
          height: 270,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomArrowButton(
              onClick: () {},
              iconShow: Icons.arrow_back_ios_new_rounded,
            ),
            CustomArrowButton(
              onClick: () {},
              iconShow: Icons.arrow_forward_ios_rounded,
            ),
          ],
        )
      ],
    );
  }
}
