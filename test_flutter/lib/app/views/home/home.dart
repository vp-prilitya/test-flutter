import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_flutter/app/views/soal-A/soal_a_view.dart';
import 'package:test_flutter/app/views/soal-B/soal_b_view.dart';
import 'package:test_flutter/app/views/soal-C/soal_c_view.dart';
import 'package:test_flutter/app/views/soal-D/soal_d_view.dart';
import 'package:test_flutter/app/views/soal-E/soal_e_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Flutter"),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                elevation: 1,
                child: ListTile(
                  title: const Text("SOAL A"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.to(const SoalAView()),
                ),
              ),
              Card(
                elevation: 1,
                child: ListTile(
                  title: const Text("SOAL B"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.to(const SoalBView()),
                ),
              ),
              Card(
                elevation: 1,
                child: ListTile(
                  title: const Text("SOAL C"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.to(const SoalCView()),
                ),
              ),
              Card(
                elevation: 1,
                child: ListTile(
                  title: const Text("SOAL D"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.to(const SoalDView()),
                ),
              ),
              Card(
                elevation: 1,
                child: ListTile(
                  title: const Text("SOAL E"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.to(const SoalEView()),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
