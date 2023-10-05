import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SoalDView extends StatefulWidget {
  const SoalDView({super.key});

  @override
  State<SoalDView> createState() => _SoalDViewState();
}

class _SoalDViewState extends State<SoalDView> {
  final TextEditingController input = TextEditingController();
  int n = 0;

  void go() {
    setState(() {
      n = int.parse(input.text);
    });
  }

  String check(int value) {
    if (value != 5 && value != 6) {
      if (value % 5 == 0) {
        return 'IDIC';
      } else if (value % 6 == 0) {
        return 'LPS';
      } else {
        return value.toString();
      }
    }

    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Soal D")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: input,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration:
                    const InputDecoration(label: Text("Masukkan jumlah N")),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => go(), child: const Text("accept")),
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
                itemCount: n,
                itemBuilder: (context, index) => Text(check(index + 1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
