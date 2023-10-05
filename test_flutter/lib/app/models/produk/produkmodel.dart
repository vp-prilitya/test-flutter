// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'produkmodel.freezed.dart';
part 'produkmodel.g.dart';

@freezed
class ProdukModel with _$ProdukModel {
  factory ProdukModel({
    required int id,
    @JsonKey(name: 'nama_barang') String? namaBarang,
    @JsonKey(name: 'kode_barang') String? kodeBarang,
    @JsonKey(name: 'jumlah_barang') int? jumlahBarang,
    String? createdAt,
  }) = _ProdukModel;

  factory ProdukModel.fromJson(Map<String, dynamic> json) =>
      _$ProdukModelFromJson(json);
}
