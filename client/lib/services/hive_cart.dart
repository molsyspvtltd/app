import 'package:hive/hive.dart';
part 'hive_cart.g.dart';

@HiveType(typeId: 0)
class HiveCart{

  @HiveField(0)
  final String productName;

  @HiveField(1)
  final String imageUrl;

  @HiveField(2)
  final double price;

  @HiveField(3)
  String? key;

  HiveCart(this.productName, this.imageUrl,this.price);

}