import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String price;
  final String desc;

  const DetailScreen({super.key, required this.title, required this.price, required this.desc});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.shopping_bag, size: 80, color: Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 24),
            
            Text(widget.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(widget.price, style: const TextStyle(fontSize: 22, color: Colors.orange, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[50], 
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Deskripsi Produk:', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(widget.desc, style: const TextStyle(fontSize: 16, height: 1.5)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                label: Text(isFavorite ? 'Masuk Wishlist' : 'Tambah ke Wishlist'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: isFavorite ? Colors.red[50] : Colors.blueAccent,
                  foregroundColor: isFavorite ? Colors.red : Colors.white,
                  side: BorderSide(color: isFavorite ? Colors.red : Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}