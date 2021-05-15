import 'package:mysql1/mysql1.dart';

class ProductItem {
  int id;
  String name;
  String weight;
  double price;
  Blob imageBlob;
  String description;
  int calories;
  int proteins;
  int fats;
  int carbohydrates;

  ProductItem(this.id, this.name, this.weight, this.price, this.imageBlob,
      {required this.description,
        required this.calories,
        required this.proteins,
        required this.fats,
        required this.carbohydrates});
}