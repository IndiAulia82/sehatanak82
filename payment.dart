
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: Text("Pembayaran"), backgroundColor: Colors.pink),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Metode Pembayaran", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ListTile(title: Text("Transfer Bank")),
            ListTile(title: Text("QRIS")),
            ListTile(title: Text("COD")),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Bayar Sekarang"),
            )
          ],
        ),
      ),
    );
  }
}
