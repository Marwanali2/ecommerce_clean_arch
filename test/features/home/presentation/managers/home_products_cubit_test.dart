// test/features/home/presentation/managers/home_products_cubit/home_products_cubit_test.dart

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/use_cases/fetch_products_use_case.dart';
import 'package:route_attendence_task/features/home/presentation/managers/home_products_cubit/home_products_cubit.dart';

class MockProductsUseCase extends Mock implements ProductsUseCase {}

void main() {
  late HomeProductsCubit cubit;
  late MockProductsUseCase mockProductsUseCase;

  setUp(() {
    mockProductsUseCase = MockProductsUseCase();
    cubit = HomeProductsCubit(mockProductsUseCase);
  });

  final List<ProductEntity> tProducts = [
    ProductEntity(
      productImageThumbnail: 'image.png',
      productImage: 'image.png',
      productTitle: 'Test Product',
      productDescription: 'Test Description',
      productdiscountPercentage: 10,
      productPrice: 100,
      productRatring: 4.5,
    ),
  ];

  blocTest<HomeProductsCubit, HomeProductsState>(
    'emits [HomeProductsLoading, HomeProductsSuccess] when fetchProducts is successful',
    build: () {
      when(mockProductsUseCase()).thenAnswer((_) async => right(tProducts));
      return cubit;
    },
    act: (cubit) => cubit.fetchProducts(),
    expect: () => [
      HomeProductsLoading(),
      HomeProductsSuccess(products: tProducts),
    ],
  );

  blocTest<HomeProductsCubit, HomeProductsState>(
    'emits [HomeProductsLoading, HomeProductsFailure] when fetchProducts fails',
    build: () {
      when(mockProductsUseCase()).thenAnswer((_) async => left(ServerFailure(errorMessage: 'Server Error')));
      return cubit;
    },
    act: (cubit) => cubit.fetchProducts(),
    expect: () => [
      HomeProductsLoading(),
      HomeProductsFailure(errorMessage: 'Server Error'),
    ],
  );
}
