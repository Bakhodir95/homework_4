// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      compName: json['compName'] as String,
      location: json['location'] as String,
      employee: Employee.fromJson(json['employee'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'compName': instance.compName,
      'location': instance.location,
      'employee': instance.employee,
      'product': instance.product,
    };
