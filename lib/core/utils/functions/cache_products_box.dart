import 'package:hive_flutter/hive_flutter.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';

void cacheProductsBox(List<ProductEntity> products, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(products);
}
