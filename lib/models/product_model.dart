class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String imageUrl; // Placeholder for the product image

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      description: json['description'],
      imageUrl: json['image_url'] ?? 'https://via.placeholder.com/150', // Optional image URL
    );
  }
}