import 'package:flutter/material.dart';

class hasildiagnosa extends StatelessWidget {
  final double berat;
  final double tinggi;

  const ResultPage({super.key, required this.berat, required this.tinggi});

  String getDiagnosis() {
    if (tinggi == 0) return 'Data tidak valid';
    double bmi = berat / ((tinggi / 100) * (tinggi / 100));
    if (bmi < 14) return 'Resiko Stunting Tinggi';
    if (bmi < 17) return 'Resiko Sedang';
    return 'Resiko Stunting Rendah';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Hasil Diagnosa'),
        backgroundColor: const Color(0xFF3E7BFA),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                getDiagnosis(),
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _infoItem('Berat', berat.toStringAsFixed(1)),
                  _infoItem('Tinggi', tinggi.toStringAsFixed(1)),
                  _infoItem('Persentil', '21'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Rekomendasi:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('1. Teruskan pola makan seimbang'),
            const Text('2. Pantau perkembangan tiap bulan'),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3E7BFA),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text('Simpan & Bagikan'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoItem(String label, String value) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
