import 'package:flutter/material.dart';
import 'package:app_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('Sepatu Nike', 100000, 'assets/sepatu_nike.jpeg'),
    Item('Sepatu Adidas', 900000, 'assets/sepatu_adidas.jpeg'),
    Item('Sepatu Puma', 800000, 'assets/sepatu_puma.jpeg'),
    Item('Sepatu Reebok', 6800000, 'assets/sepatu_reebok.jpeg'),
    Item('Sepatu Converse', 800000, 'assets/sepatu_converse.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang Belanja'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}