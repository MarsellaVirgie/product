import 'package:flutter/material.dart';
import 'package:product/screens/home_screen.dart';
import 'package:product/services/product_service.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _controllerKode = TextEditingController();
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerDesc = TextEditingController();
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controllerKode,
                    decoration: const InputDecoration(hintText: 'Masukkan kode produk'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controllerNama,
                    decoration: const InputDecoration(hintText: 'Masukkan nama produk'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controllerDesc,
                    decoration: const InputDecoration(hintText: 'Masukkan deskripsi produk'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
                _productService.addProductItem(_controllerKode.text, _controllerNama.text,  _controllerDesc.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
            },
            child: const Text('Tambah'),
          ),
        ],
      ),
    );
  }
}