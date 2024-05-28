class ProductModel{
  late int id;
  late String name;
  late String description;
  late double price;
  late String imageUrl;

  ProductModel(this.id, this.name, this.description, this.price, this.imageUrl);

  ProductModel.fromJson(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
    description = map['description'];
    price = map['price'];
    imageUrl = map['imageUrl'];
  }
}