part of 'product_bloc.dart';

@immutable
sealed class ProductsEvent {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}
class ProductsLoadedEvent extends ProductsEvent{
    @override
  List<Object> get props => [];

}
