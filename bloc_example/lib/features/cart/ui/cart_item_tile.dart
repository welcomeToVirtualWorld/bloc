import 'package:bloc_example/features/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';

typedef CartCallback = void Function(ProductModel product);

class CartTileWidget extends StatelessWidget {
  final ProductModel data;
  final CartCallback deleteCartItemCallback;
  const CartTileWidget({super.key, required this.data,required this.deleteCartItemCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(data.imageUrl))),
          ),
          Text(data.name),
          Text(data.description),
          // IconButton(onPressed: () {
          //   whishlistCallback(data);
          // }, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {
            deleteCartItemCallback(data);
          }, icon: const Icon(Icons.delete_outlined))
        ],
      ),
    );
  }
}
