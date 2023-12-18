import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  AddBookPage({super.key});
  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController authorController = TextEditingController();

  final TextEditingController pageCountController = TextEditingController();

  String selectedGenre = 'Roman';

  // Default genre
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kitap Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kitap Adı'),
            TextField(controller: titleController),
            Text('Yazar'),
            TextField(controller: authorController),
            Text('Sayfa Sayısı'),
            TextField(
              controller: pageCountController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            Text('Kategori'),
            DropdownButton<String>(
              value: selectedGenre,
              onChanged: (String? newValue) {
                selectedGenre = newValue!;
              },
              items: <String>[
                'Roman',
                'Tarih',
                'Edebiyat',
                'Ansiklopedi',
                'Hikaye',
                'Şiir',
                'Deneme'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                String title = titleController.text;
                String author = authorController.text;
                int pageCount = int.tryParse(pageCountController.text) ?? 0;
                if (title.isNotEmpty && author.isNotEmpty && pageCount > 0) {
                  await FirebaseFirestore.instance.collection('books').add({
                    'title': title,
                    'author': author,
                    'pageCount': pageCount,
                    'genre': selectedGenre,
                  });

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Kitap Eklendi'),
                        content: Text('Kitap ekleme başarılı!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text('Tamam'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Kitap Ekle'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Geri Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
