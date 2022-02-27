import 'package:ecommerce_product/models/product.dart';

final List<String> dummyCategories = [
  "Collections",
  "Men",
  "Women",
  "About",
  "Contact",
];

final Product dummyProduct = Product(
  brand: "sneaker company",
  name: "Fall Limited Edition Sneakers",
  description:
      "These low-profile sneakers are your perfect casual wear companion. Featuring a  durable rubber outer sole, they’ll withstand everything the weather can offer.",
  price: 250.00,
  currency: "\$",
  percentageDiscount: 50,
  pathImages: [
    "assets/images/dummy_product/image-product-1.jpg",
    "assets/images/dummy_product/image-product-2.jpg",
    "assets/images/dummy_product/image-product-3.jpg",
    "assets/images/dummy_product/image-product-4.jpg",
  ],
);
