import 'package:flutter/material.dart';

class SoalCView extends StatefulWidget {
  const SoalCView({super.key});

  @override
  State<SoalCView> createState() => _SoalCViewState();
}

class _SoalCViewState extends State<SoalCView> {
  final TextEditingController input = TextEditingController();
  List data = [];

  void go() {
    final array = input.text.replaceAll(' ', '').split('');

    setState(() {
      data = array.toSet().toList();
    });
  }

  int count(String crt) {
    return crt.allMatches(input.text).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Soal C")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: input,
              decoration: const InputDecoration(label: Text("Input")),
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) =>
                  Text("${data[index]} - ${count(data[index])}"),
            )
          ],
        ),
      ),
    );
  }
}
