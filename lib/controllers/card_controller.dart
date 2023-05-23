import 'package:borniak/feature/product/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
  }

}