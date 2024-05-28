import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/cart_item.dart';
import 'package:bloc_example/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveEvent);
  }

  FutureOr<void> cartInitialEvent(CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(
        cartItems: cartItem));
  }

  FutureOr<void> cartRemoveEvent(CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    cartItem.remove(event.data);
    emit(CartSuccessState(
        cartItems: cartItem));
  }
}
