import 'package:bloc_example/features/cart/ui/cart_item_tile.dart';
import 'package:bloc_example/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  WishlistBloc bloc = WishlistBloc();

  @override
  void initState() {
    bloc.add(WishlistInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wishlist Items"),
        ),
        body: BlocConsumer<WishlistBloc, WishlistState>(
          bloc: bloc,
          listener: (context, state) {},
          listenWhen: (previous, current) => current is WishlistActionState,
          buildWhen: (previous, current) => current is! WishlistActionState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case WishlistSuccessState:
                final successState = state as WishlistSuccessState;
                return ListView.builder(
                    itemCount: successState.wishListItem.length,
                    itemBuilder: (context, index) {
                      return CartTileWidget(
                        data: successState.wishListItem[index],
                        deleteCartItemCallback: (product) {
                          bloc.add(WishlistRemoveFromWishlistEvent(data:product));
                        },
                      );
                    });
              default:
            }
            return Container();
          },
        ));
  }
}
