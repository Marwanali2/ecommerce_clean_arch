import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:route_attendence_task/core/Dependency_injection/service_locator.dart';
import 'package:route_attendence_task/core/utils/constants.dart';
import 'package:route_attendence_task/core/utils/simple_bloc_observer.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/route_task.dart';

void main() async {
  await Hive.initFlutter();
    setupServiceLocator();
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>(kProductsBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const RouteTask());
}