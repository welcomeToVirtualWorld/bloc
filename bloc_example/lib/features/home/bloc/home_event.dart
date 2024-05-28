part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent{

}

class HomeProductWishlistButtonClickedEvent extends HomeEvent{
  final ProductModel data;

  HomeProductWishlistButtonClickedEvent({required this.data});

}

class HomeProductCartButtonClickedEvent extends HomeEvent{
  final ProductModel data;

  HomeProductCartButtonClickedEvent({required this.data});

}

class HomeWishlistButtonNavigateEvent extends HomeEvent{

}

class HomeCartButtonNavigateEvent extends HomeEvent{
  
}