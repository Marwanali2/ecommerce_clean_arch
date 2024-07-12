import 'package:dartz/dartz.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/repos/home_repo.dart';

class FetchProductsUseCase {
  final HomeRepo homeRepo;

  FetchProductsUseCase(this.homeRepo);
  Future<Either<Failure, List<ProductEntity>>> fetchProducts() {
    return homeRepo.fetchProducts();
  }
}
