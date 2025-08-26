class Rating {
  final double rate;
  final int count;
  const Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> j) => Rating(
        rate: (j['rate'] as num?)?.toDouble() ?? 0,
        count: (j['count'] as num?)?.toInt() ?? 0,
      );
}

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> j) => Product(
        id: (j['id'] as num).toInt(),
        title: j['title'] as String,
        price: (j['price'] as num).toDouble(),
        description: j['description'] as String,
        category: j['category'] as String,
        image: j['image'] as String,
        rating: Rating.fromJson(j['rating'] as Map<String, dynamic>),
      );
}
