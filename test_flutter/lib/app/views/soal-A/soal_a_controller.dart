import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/app/models/produk/produkcreate.dart';
import 'package:test_flutter/app/models/produk/produkmodel.dart';
import 'package:test_flutter/app/sevices/db_services.dart';
import 'package:test_flutter/app/views/soal-A/produk_add.dart';

class SoalAController extends GetxController {
  RxList<ProdukModel> dataProduk = <ProdukModel>[].obs;

  RxInt idData = 0.obs;
  TextEditingController namaBarang = TextEditingController();
  TextEditingController kodeBarang = TextEditingController();
  TextEditingController jumlahBarang = TextEditingController();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    final data = await DatabaseService.getAll();
    dataProduk.value = data;
  }

  void save() async {
    await DatabaseService.createItem(ProdukCreate(
        jumlahBarang: int.parse(jumlahBarang.text),
        kodeBarang: kodeBarang.text,
        namaBarang: namaBarang.text));
    getData();
    Get.back();
  }

  goToUpdate(int id) async {
    Get.to(const ProdukAdd(), arguments: 'edit');
    final result = await DatabaseService.getById(id);
    namaBarang.text = result[0].namaBarang!;
    jumlahBarang.text = result[0].jumlahBarang.toString();
    kodeBarang.text = result[0].kodeBarang!;
    idData.value = id;
  }

  updateData() async {
    await DatabaseService.updateItem(
        idData.value,
        ProdukCreate(
            jumlahBarang: int.parse(jumlahBarang.text),
            kodeBarang: kodeBarang.text,
            namaBarang: namaBarang.text));
    getData();
    Get.back();
  }

  delete(int id) async {
    await DatabaseService.delete(id);
    getData();
  }

  search(String value) async {
    final result = await DatabaseService.searchByName(value);
    dataProduk.value = result;
  }
}
