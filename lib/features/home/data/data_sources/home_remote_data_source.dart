import 'package:route_attendence_task/core/utils/api_services.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';

abstract class HomeRemoteDataSource {
  Future< List<ProductEntity>> fetchProducts();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  
  @override
  Future<List<ProductEntity>> fetchProducts() {
  
    throw UnimplementedError();
  }

}
