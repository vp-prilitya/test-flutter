import 'package:flutter/material.dart';

class SoalBView extends StatefulWidget {
  const SoalBView({super.key});

  @override
  State<SoalBView> createState() => _SoalBViewState();
}

class _SoalBViewState extends State<SoalBView> {
  final TextEditingController input = TextEditingController();
  List result = [];

  void go() {
    result.clear();
    for (var x = 0; x < input.text.length; x++) {
      setState(() {
        result.add(input.text[x].padRight(input.text.length - x, '0'));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Soal B")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: input,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text("Input number")),
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
              height: 30,
            ),
            ...result.map((e) => Text(e)).toList(),
          ],
        ),
      ),
    );
  }
}
