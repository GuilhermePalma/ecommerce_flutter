class Product {
  final String name;
  final String brand;
  final String description;
  final String currency;
  final double price;
  final double percentageDiscount;
  final List<String> pathImages;

  Product({
    required this.name,
    required this.brand,
    required this.description,
    required this.currency,
    required this.price,
    required this.percentageDiscount,
    required this.pathImages,
  });
}
