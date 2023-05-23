class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static const List<Product> products = [
    Product(
      name: 'Wędzony kurczak',
      price: 2.99,
      imageUrl: "assets/kurczak.jpeg",
    ),
    Product(
      name: 'Kiełbasa',
      price: 3.99,
      imageUrl: "assets/kielbasa.jpg",
    ),
    Product(
      name: 'Wędzony ser',
      price: 4.99,
      imageUrl: "assets/ser-wędzony.jpeg",
    )
  ];
}
