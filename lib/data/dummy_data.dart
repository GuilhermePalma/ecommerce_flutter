import 'package:ecommerce_product/models/product.dart';

final List<String> dummyCategories = [
  "Collections",
  "Men",
  "Women",
  "About",
  "Contact",
];

final Product dummyProduct = Product(
  brand: "Sneaker Company",
  name: "Fall Limited Edition Sneakers",
  description:
      "These low-profile sneakers are your perfect casual wear companion. Featuring a  durable rubber outer sole, they’ll withstand everything the weather can offer.",
  price: 250.00,
  currency: "\$",
  percentageDiscount: 50,
  pathImages: [""],
);
