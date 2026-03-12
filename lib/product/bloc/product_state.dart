part of 'product_bloc.dart';

@immutable
sealed class ProductsState {}

final class ProductInitial extends ProductsState {
  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoadingState extends ProductsState {}

class ProductsLoadedState extends ProductsState {


  ProductsLoadedState(productsModelFormJson, );
  @override
  List<Object> get props => [];
}

class ProductsErrorState extends ProductsState {
  final String errormessage;

  ProductsErrorState({required this.errormessage});
    @override
  List<Object> get props => [errormessage];
  
}
