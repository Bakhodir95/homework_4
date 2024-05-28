import 'package:homework_4/models/employee.dart';
import 'package:homework_4/models/product.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';

@JsonSerializable()
class Company {
  String compName;
  String location;
  Employee employee;
  Product product;

  Company(
      {required this.compName,
      required this.location,
      required this.employee,
      required this.product});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      compName: json['compName'],
      location: json['location'],
      employee: Employee.fromJson(json['employee']),
      product: Product.fromJson(json['product']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "compName": compName,
      "location": location,
      "employee": employee.toJson(),
      "product": employee.toJson()
    };
  }
}
