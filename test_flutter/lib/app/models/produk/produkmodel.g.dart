// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produkmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProdukModel _$$_ProdukModelFromJson(Map<String, dynamic> json) =>
    _$_ProdukModel(
      id: json['id'] as int,
      namaBarang: json['nama_barang'] as String?,
      kodeBarang: json['kode_barang'] as String?,
      jumlahBarang: json['jumlah_barang'] as int?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_ProdukModelToJson(_$_ProdukModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_barang': instance.namaBarang,
      'kode_barang': instance.kodeBarang,
      'jumlah_barang': instance.jumlahBarang,
      'createdAt': instance.createdAt,
    };
