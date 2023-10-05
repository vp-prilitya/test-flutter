import 'package:flutter/material.dart';
import 'package:test_flutter/app/utils/helper.dart';

class SoalEView extends StatefulWidget {
  const SoalEView({super.key});

  @override
  State<SoalEView> createState() => _SoalEViewState();
}

class _SoalEViewState extends State<SoalEView> {
  final TextEditingController input = TextEditingController();
  String judul = '';
  String biasa = '';

  void go() {
    setState(() {
      biasa = input.text.formatBiasa();
      judul = input.text.formatJudul();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Soal E")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: input,
              decoration:
                  const InputDecoration(label: Text("Masukkan kalimat")),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () => go(), child: const Text("accept")),
            const SizedBox(
              height: 30,
            ),
            const Text("Output :"),
            const SizedBox(
              height: 20,
            ),
            Text("Format Judul : $judul"),
            Text("Format Biasa : $biasa")
          ],
        ),
      ),
    );
  }
}
