import 'package:firebase_database/firebase_database.dart';

class ProductService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('product_list');

  Stream<Map<String, String>> getProductList() {
    return _database.onValue.map((event) {
      final Map<String, String> items = {};
      DataSnapshot snapshot = event.snapshot;

      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              'Kode Produk = ${value['product_code']} \nNama Produk = ${value['product_name']} \nDeskripsi Produk = ${value['product_desc']}';
        });
      }
      return items;
    });
  }

  void addProductItem(String itemCode, String itemName, String itemDesc) {
    _database.push().set({
      'product_kode': itemCode,
      'product_name': itemName,
      'product_desc': itemDesc,
    });
  }

  Future<void> removeProductItem(String key) async {
    await _database.child(key).remove();
  }
}
