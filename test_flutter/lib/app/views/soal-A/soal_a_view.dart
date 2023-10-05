import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/app/views/soal-A/produk_add.dart';
import 'package:test_flutter/app/views/soal-A/soal_a_controller.dart';

class SoalAView extends StatelessWidget {
  const SoalAView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SoalAController());
    final controller = Get.find<SoalAController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Soal A")),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CupertinoTextField(
                  placeholder: 'Search',
                  onChanged: (value) => controller.search(value),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.dataProduk.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          child:
                              Text(controller.dataProduk[index].id.toString())),
                      title: Text(controller.dataProduk[index].namaBarang!),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Kode ${controller.dataProduk[index].kodeBarang!}"),
                          Text(
                              "jumlah ${controller.dataProduk[index].jumlahBarang.toString()}"),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () => controller
                                  .goToUpdate(controller.dataProduk[index].id),
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () => controller
                                  .delete(controller.dataProduk[index].id),
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(const ProdukAdd(), arguments: 'add'),
          child: const Icon(Icons.add)),
    );
  }
}
