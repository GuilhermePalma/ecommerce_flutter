class Product {
  final String name;
  final String brand;
  final String description;
  final String currency;
  final double price;
  final int quantity;
  final double percentageDiscount;
  final List<String> pathImages;

  Product({
    required this.name,
    required this.brand,
    required this.description,
    required this.currency,
    this.quantity = 1,
    required this.price,
    required this.percentageDiscount,
    required this.pathImages,
  });

  /// Define o Preço do Produto com Desconto
  double get priceWithDiscount {
    return percentageDiscount > 0 && percentageDiscount < 100
        ? (price * percentageDiscount) / 100
        : price;
  }
}
