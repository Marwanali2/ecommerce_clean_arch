import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:route_attendence_task/core/Dependency_injection/service_locator.dart';
import 'package:route_attendence_task/core/utils/constants.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/route_task.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>(kProductsBox);
  setupServiceLocator();
  runApp(const RouteTask());
}

