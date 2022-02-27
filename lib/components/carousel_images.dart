import 'package:ecommerce_product/components/custom_arrow_button.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> listImages;

  const CarouselImages({
    Key? key,
    required this.listImages,
  }) : super(key: key);

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  int indexImage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: 270,
          width: double.infinity,
          child: Image.asset(
            widget.listImages.elementAt(indexImage),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Tratamento de Erro na Imagem
              return Image.asset("assets/images/error_404.jpg");
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomArrowButton(
              onClick: () => _clickButtonCarousel(indexImage - 1),
              iconShow: Icons.arrow_back_ios_new_rounded,
            ),
            CustomArrowButton(
              onClick: () => _clickButtonCarousel(indexImage + 1),
              iconShow: Icons.arrow_forward_ios_rounded,
            ),
          ],
        )
      ],
    );
  }

  /// Trata a exibição das Imagens conforme o Clique nos Botões
  void _clickButtonCarousel(int newIndex) {
    setState(() {
      if (newIndex >= widget.listImages.length) {
        // Caso o Index seja maior que a lista, volta para o Primeiro Item
        indexImage = 0;
      } else if (newIndex < 0) {
        // Caso o Index seja menor que 0 (Anterior ao 1° Item), exibe o Utlimo Item
        indexImage = widget.listImages.length - 1;
      } else {
        indexImage = newIndex;
      }
    });
  }
}
