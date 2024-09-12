import 'dart:convert';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;  // Add this line

class ProductService {
  static const String apiUrl = 'https://assignment2.free.beeceptor.com/';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}