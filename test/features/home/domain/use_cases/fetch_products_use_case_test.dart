import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/repos/home_repo.dart';
import 'package:route_attendence_task/features/home/domain/use_cases/fetch_products_use_case.dart';

class MockHomeRepo extends Mock implements HomeRepo {}

void main() {
  late ProductsUseCase useCase;
  late MockHomeRepo mockHomeRepo;

  setUp(() {
    mockHomeRepo = MockHomeRepo();
    useCase = ProductsUseCase(mockHomeRepo);
  });

  final List<ProductEntity> tProducts = [
    ProductEntity(
      productImageThumbnail: 'image1.png',
      productImage:'image.png',
      productTitle: 'Test Product 1',
      productDescription: 'Test Description 1',
      productdiscountPercentage: 10,
      productPrice: 100,
      productRatring: 4.5,
    ),
  ];

  test('should get product list from the repository', () async {
    // arrange
    when(mockHomeRepo.fetchProducts()).thenAnswer((_) async => right(tProducts));

    // act
    final result = await useCase();

    // assert
    expect(result, right(tProducts));
    verify(mockHomeRepo.fetchProducts());
    verifyNoMoreInteractions(mockHomeRepo);
  });

  test('should return failure when repository fails', () async {
    // arrange
    when(mockHomeRepo.fetchProducts()).thenAnswer((_) async => left(ServerFailure(errorMessage: 'Server Error')));

    // act
    final result = await useCase();

    // assert
    expect(result, left(ServerFailure(errorMessage: 'Server Error')));
    verify(mockHomeRepo.fetchProducts());
    verifyNoMoreInteractions(mockHomeRepo);
  });
}
