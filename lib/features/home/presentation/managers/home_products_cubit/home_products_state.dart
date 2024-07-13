part of 'home_products_cubit.dart';

@immutable
sealed class HomeProductsState {}

final class HomeProductsInitial extends HomeProductsState {}

final class HomeProductsLoading extends HomeProductsState {}

final class HomeProductsFailure extends HomeProductsState {
  final String errorMessage;

  HomeProductsFailure({required this.errorMessage});
}

final class HomeProductsSuccess extends HomeProductsState {
  final List<ProductEntity> products;

  HomeProductsSuccess({required this.products});
}
