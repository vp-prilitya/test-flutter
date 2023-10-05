import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:test_flutter/app/views/soal-A/soal_a_controller.dart';

class ProdukAdd extends StatelessWidget {
  const ProdukAdd({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SoalAController>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Produk"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.namaBarang,
                  decoration: const InputDecoration(
                    labelText: "Nama barang",
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controller.kodeBarang,
                  decoration: const InputDecoration(
                    labelText: "Kode barang",
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controller.jumlahBarang,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Jumlah barang",
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (Get.arguments == 'add') {
                          controller.save();
                        } else {
                          controller.updateData();
                        }
                      }
                    },
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
