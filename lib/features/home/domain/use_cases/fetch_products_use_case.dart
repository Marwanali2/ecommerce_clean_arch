import 'package:dartz/dartz.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/core/use_cases/use_case.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/repos/home_repo.dart';

class FetchProductsUseCase extends UseCase<List<ProductEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchProductsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchProducts();
  }
}
