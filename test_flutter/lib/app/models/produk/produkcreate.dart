// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'produkcreate.freezed.dart';
part 'produkcreate.g.dart';

@freezed
class ProdukCreate with _$ProdukCreate {
  factory ProdukCreate({
    @JsonKey(name: 'nama_barang') String? namaBarang,
    @JsonKey(name: 'kode_barang') String? kodeBarang,
    @JsonKey(name: 'jumlah_barang') int? jumlahBarang,
  }) = _ProdukCreate;

  factory ProdukCreate.fromJson(Map<String, dynamic> json) =>
      _$ProdukCreateFromJson(json);
}
