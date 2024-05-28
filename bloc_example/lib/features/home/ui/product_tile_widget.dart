import 'package:bloc_example/features/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';

typedef ProductCallback = void Function(ProductModel product);

class ProductTileWidget extends StatelessWidget {
  final ProductModel data;
  final ProductCallback whishlistCallback;
  final ProductCallback shoppingCallback;
  const ProductTileWidget({super.key, required this.data,required this.whishlistCallback,required this.shoppingCallback});

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
          IconButton(onPressed: () {
            whishlistCallback(data);
          }, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {
            shoppingCallback(data);
          }, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
    );
  }
}
