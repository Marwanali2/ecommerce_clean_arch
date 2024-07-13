import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_attendence_task/features/home/domain/entities/product_entity.dart';
import 'package:route_attendence_task/features/home/domain/use_cases/fetch_products_use_case.dart';

part 'home_products_state.dart';

class HomeProductsCubit extends Cubit<HomeProductsState> {
  final ProductsUseCase fetchProductsUseCase;
  HomeProductsCubit(this.fetchProductsUseCase) : super(HomeProductsInitial());
  Future<void> fetchProducts() async {
    emit(HomeProductsLoading());
    var productsResult = await fetchProductsUseCase.call();
    productsResult.fold(
      (failure) => emit(HomeProductsFailure(errorMessage: failure.toString())),
      (products) => emit(HomeProductsSuccess(products: products)),
    );
  }
}
