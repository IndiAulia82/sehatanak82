
import 'package:flutter/material.dart';
import 'payment.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: Text("Detail Produk"), backgroundColor: Colors.pink),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.local_florist, size: 150, color: Colors.pink),
            SizedBox(height: 20),
            Text("Buket Mawar Premium", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Harga: Rp 150.000"),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentPage()));
              },
              child: Text("Beli Sekarang"),
            )
          ],
        ),
      ),
    );
  }
}
