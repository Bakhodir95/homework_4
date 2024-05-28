import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  String productName;
  num price;
  bool inStock;

  Product(
      {required this.productName, required this.price, required this.inStock});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json['productName'],
      price: json["price"],
      inStock: json['inStock'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"productName": productName, "price": price, "inStock": inStock};
  }
}
