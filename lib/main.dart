import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amajon Store"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Colors.black87,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildProductCard(context, "Produk 1", Colors.white, 4.5),
          const SizedBox(height: 16),
          buildProductCard(context, "Produk 2", Colors.green.shade50, 3.8),
          const SizedBox(height: 32),
          // Footer promo
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              "🔥 PROMO SPESIAL: Beli 2 Gratis 1!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }

  Widget buildProductCard(
    BuildContext context,
    String title,
    Color bgColor,
    double rating,
  ) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 12, right: 12, bottom: 20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),
              const SizedBox(width: 4),
              Text(rating.toString(), style: const TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Beli"),
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Icon(Icons.local_shipping, size: 20, color: Colors.grey),
              SizedBox(width: 6),
              Text("Estimasi tiba 2-3 hari", style: TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.discount, size: 20, color: Colors.redAccent),
              SizedBox(width: 6),
              Text(
                "Gratis Ongkir Seluruh Indonesia",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(width: 6),
              Icon(Icons.local_shipping, size: 20, color: Colors.blueGrey),
            ],
          ),
        ],
      ),
    );
  }
}
