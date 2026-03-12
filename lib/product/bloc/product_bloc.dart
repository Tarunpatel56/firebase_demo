import 'package:bloc/bloc.dart';
import 'package:firebase_demo/model/product_model.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductBloc() : super(ProductsLoadingState()) {
    on<ProductsLoadedEvent>((event, emit) async {
      try {
        emit(ProductsLoadingState());
        var response = await http.get(
          Uri.parse("https://fakestoreapi.com/products"),
        );
        emit(ProductsLoadedState(productsModelFormJson(response.body),));
      } catch (e) {}
    });
  }
}
