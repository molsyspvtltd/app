import 'package:dnalyst/services/hive_cart.dart';
import 'package:hive/hive.dart';

class CartFunctions {
  // Add an item to the cart
  Future<void> addToCart(String key, HiveCart cartModel) async {
    final cartDb = await Hive.openBox<HiveCart>('cart');

    // Add the new item to the cart
    // int key = await cartDb.add(cartModel);
    cartModel.key = key;

    // Save the updated cart back to the database
    await cartDb.put(key, cartModel);
  }

  // Delete an item from the cart
  Future<void> delete(HiveCart cartModel) async {
    final cartDb = await Hive.openBox<HiveCart>('cart');
    await cartDb.delete(cartModel.key);
  }

  Future<void> deleteAll() async{
    final cartDb = await Hive.openBox<HiveCart>('cart');
    cartDb.values.forEach((item) async {
      await delete(item);
    });
  }

  // Retrieve all items from the cart
  Future<List<HiveCart>> getCart() async {
    final cartDb = await Hive.openBox<HiveCart>('cart');
    return cartDb.values.toList();
  }
}
