import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amajon Store'), centerTitle: true),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(12.0),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: const Text(
                'PROMO SPESIAL HARI INI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            // Produk 1
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                top: 12,
                right: 12,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      SizedBox(width: 4),
                      Text('4.7', style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  // Harga
                  const Text(
                    'Rp 750.000',
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 114, 197),
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Estimasi pengiriman
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.grey, size: 18),
                      SizedBox(width: 4),
                      Text(
                        'Dikirim dalam 2-3 hari',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Tombol Beli
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        'Beli',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Produk 2
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                top: 16,
                right: 12,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 137, 229, 249),
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      SizedBox(width: 4),
                      Text('4.7', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 4.0),

                  // Harga
                  const Text(
                    'Rp 350.000',
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 114, 197),
                      fontSize: 14.0,
                    ),
                  ),

                  // Estimasi pengiriman
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.grey, size: 18),
                      SizedBox(width: 4),
                      Text(
                        'Dikirim dalam 2-3 hari',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),

                  // Tombol Beli
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        'Beli',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //promo
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '🔥 PROMO SPESIAL: Beli 2 Gratis 1!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.local_shipping, color: Colors.brown),
                      SizedBox(width: 6.0),
                      Text(
                        'Gratis Ongkir Seluruh Indonesia',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Kategori
            Container(
              margin: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const <Widget>[
                      Icon(Icons.shopping_bag, color: Colors.blue),
                      SizedBox(height: 4.0),
                      Text('Pakaian'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.watch, color: Colors.blue),
                      SizedBox(height: 4.0),
                      Text('Aksesoris'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.devices, color: Colors.blue),
                      SizedBox(height: 4.0),
                      Text('Elektronik'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
