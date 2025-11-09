import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final beratController = TextEditingController();
  final tinggiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Input Data Pertumbuhan'),
        backgroundColor: const Color(0xFF3E7BFA),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _inputField('Tanggal Ukur', '8 November 2025'),
            _inputField('Umur', '11 Bulan'),
            TextField(
              controller: beratController,
              decoration: const InputDecoration(labelText: 'Berat Badan (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiController,
              decoration: const InputDecoration(labelText: 'Tinggi Badan (cm)'),
              keyboardType: TextInputType.number,
            ),
            const TextField(decoration: InputDecoration(labelText: 'Catatan Singkat')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double berat = double.tryParse(beratController.text) ?? 0;
                double tinggi = double.tryParse(tinggiController.text) ?? 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResultPage(berat: berat, tinggi: tinggi),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3E7BFA),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: const Text('Analisa Sekarang'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(value, style: const TextStyle(color: Colors.grey))],
      ),
    );
  }
}
