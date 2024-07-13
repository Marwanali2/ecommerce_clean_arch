import 'dart:core';
import 'package:dartz/dartz.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_local_data_source.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProducts() async {
    try {
      List<ProductEntity> productsList;
      productsList = homeLocalDataSource.fetchProducts();
      if (productsList.isNotEmpty) {
        return right(productsList);
      }
       productsList = await homeRemoteDataSource.fetchProducts();
      return right(productsList);
    } on Exception catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
