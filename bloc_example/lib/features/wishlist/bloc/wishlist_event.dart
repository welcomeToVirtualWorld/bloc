part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent{}

class WishlistRemoveFromWishlistEvent extends WishlistEvent{
   final ProductModel data;

  WishlistRemoveFromWishlistEvent({required this.data});

}
