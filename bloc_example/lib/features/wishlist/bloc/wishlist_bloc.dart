import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/wishlist_item.dart';
import 'package:bloc_example/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(onInitialEvent);
    on<WishlistRemoveFromWishlistEvent>(wishlistRemove);
  }

  FutureOr<void> onInitialEvent(WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishListItem: wishlistItem));
  }

  FutureOr<void> wishlistRemove(WishlistRemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItem.remove(event.data);
    emit(WishlistSuccessState(
        wishListItem: wishlistItem));
  }
}
