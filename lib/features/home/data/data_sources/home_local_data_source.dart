import 'package:route_attendence_task/core/utils/api_services.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity> fetchProducts();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final ApiServices apiServices;

  HomeLocalDataSourceImpl(this.apiServices);
  
  @override
  List<ProductEntity> fetchProducts() {
    // TODO: implement fetchProducts
    throw UnimplementedError();
  }

}
