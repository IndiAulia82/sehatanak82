import 'package:flutter/material.dart';

class EdukasiPage extends StatelessWidget {
  const EdukasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final edukasiList = [
      {'judul': 'Pentingnya ASI Eksklusif', 'durasi': 'Durasi baca 3 menit'},
      {'judul': 'Makanan kaya protein untuk balita', 'durasi': 'Durasi baca 2 menit'},
      {'judul': 'Tanda-tanda gangguan pertumbuhan', 'durasi': 'Durasi baca 5 menit'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Edukasi'),
        backgroundColor: const Color(0xFF3E7BFA),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: edukasiList.length,
        itemBuilder: (context, index) {
          final item = edukasiList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.article_outlined, size: 36),
              title: Text(item['judul']!),
              subtitle: Text(item['durasi']!),
            ),
          );
        },
      ),
    );
  }
}
