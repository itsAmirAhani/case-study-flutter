import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/product.dart';

Future<List<Product>> loadProductsFromAsset() async {
  final raw = await rootBundle.loadString('assets/products.json');
  final data = jsonDecode(raw) as List;
  return data.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
}
