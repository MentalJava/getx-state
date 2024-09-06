import 'package:get/get.dart';
import 'package:getx_state/model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    var productData = [
      Product(
        id: 1,
        name: 'Mouse',
        description: 'some description about product',
        price: 30,
      ),
      Product(
        id: 2,
        name: 'Keyboard',
        description: 'some description about product',
        price: 40,
      ),
      Product(
        id: 3,
        name: 'Monitor',
        description: 'some description about product',
        price: 620,
      ),
      Product(
        id: 4,
        name: 'Ram',
        description: 'some description about product',
        price: 80,
      ),
      Product(
        id: 5,
        name: 'Speaker',
        description: 'some description about product',
        price: 120.5,
      ),
    ];

    products.assignAll(productData);
  }
}
