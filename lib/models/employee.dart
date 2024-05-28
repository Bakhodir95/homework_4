import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'employee.g.dart';

@JsonSerializable()
class Employee {
  String name;
  String position;
  int age;
  List<String> skills;

  Employee(
      {required this.name,
      required this.position,
      required this.age,
      required this.skills});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        name: json['name'],
        position: json["position"],
        age: json['age'],
        skills: json["skills"]);
  }

  Map<String, dynamic> toJson() {
    return {"name": name, "position": position, "age": age, "skills": skills};
  }
}
