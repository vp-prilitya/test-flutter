// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produkmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProdukModel _$ProdukModelFromJson(Map<String, dynamic> json) {
  return _ProdukModel.fromJson(json);
}

/// @nodoc
mixin _$ProdukModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_barang')
  String? get kodeBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_barang')
  int? get jumlahBarang => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdukModelCopyWith<ProdukModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdukModelCopyWith<$Res> {
  factory $ProdukModelCopyWith(
          ProdukModel value, $Res Function(ProdukModel) then) =
      _$ProdukModelCopyWithImpl<$Res, ProdukModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'kode_barang') String? kodeBarang,
      @JsonKey(name: 'jumlah_barang') int? jumlahBarang,
      String? createdAt});
}

/// @nodoc
class _$ProdukModelCopyWithImpl<$Res, $Val extends ProdukModel>
    implements $ProdukModelCopyWith<$Res> {
  _$ProdukModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaBarang = freezed,
    Object? kodeBarang = freezed,
    Object? jumlahBarang = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaBarang: freezed == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: freezed == kodeBarang
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahBarang: freezed == jumlahBarang
          ? _value.jumlahBarang
          : jumlahBarang // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProdukModelCopyWith<$Res>
    implements $ProdukModelCopyWith<$Res> {
  factory _$$_ProdukModelCopyWith(
          _$_ProdukModel value, $Res Function(_$_ProdukModel) then) =
      __$$_ProdukModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'kode_barang') String? kodeBarang,
      @JsonKey(name: 'jumlah_barang') int? jumlahBarang,
      String? createdAt});
}

/// @nodoc
class __$$_ProdukModelCopyWithImpl<$Res>
    extends _$ProdukModelCopyWithImpl<$Res, _$_ProdukModel>
    implements _$$_ProdukModelCopyWith<$Res> {
  __$$_ProdukModelCopyWithImpl(
      _$_ProdukModel _value, $Res Function(_$_ProdukModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaBarang = freezed,
    Object? kodeBarang = freezed,
    Object? jumlahBarang = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ProdukModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaBarang: freezed == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      kodeBarang: freezed == kodeBarang
          ? _value.kodeBarang
          : kodeBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahBarang: freezed == jumlahBarang
          ? _value.jumlahBarang
          : jumlahBarang // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProdukModel implements _ProdukModel {
  _$_ProdukModel(
      {required this.id,
      @JsonKey(name: 'nama_barang') this.namaBarang,
      @JsonKey(name: 'kode_barang') this.kodeBarang,
      @JsonKey(name: 'jumlah_barang') this.jumlahBarang,
      this.createdAt});

  factory _$_ProdukModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProdukModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nama_barang')
  final String? namaBarang;
  @override
  @JsonKey(name: 'kode_barang')
  final String? kodeBarang;
  @override
  @JsonKey(name: 'jumlah_barang')
  final int? jumlahBarang;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'ProdukModel(id: $id, namaBarang: $namaBarang, kodeBarang: $kodeBarang, jumlahBarang: $jumlahBarang, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProdukModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaBarang, namaBarang) ||
                other.namaBarang == namaBarang) &&
            (identical(other.kodeBarang, kodeBarang) ||
                other.kodeBarang == kodeBarang) &&
            (identical(other.jumlahBarang, jumlahBarang) ||
                other.jumlahBarang == jumlahBarang) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, namaBarang, kodeBarang, jumlahBarang, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProdukModelCopyWith<_$_ProdukModel> get copyWith =>
      __$$_ProdukModelCopyWithImpl<_$_ProdukModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdukModelToJson(
      this,
    );
  }
}

abstract class _ProdukModel implements ProdukModel {
  factory _ProdukModel(
      {required final int id,
      @JsonKey(name: 'nama_barang') final String? namaBarang,
      @JsonKey(name: 'kode_barang') final String? kodeBarang,
      @JsonKey(name: 'jumlah_barang') final int? jumlahBarang,
      final String? createdAt}) = _$_ProdukModel;

  factory _ProdukModel.fromJson(Map<String, dynamic> json) =
      _$_ProdukModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_barang')
  String? get namaBarang;
  @override
  @JsonKey(name: 'kode_barang')
  String? get kodeBarang;
  @override
  @JsonKey(name: 'jumlah_barang')
  int? get jumlahBarang;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProdukModelCopyWith<_$_ProdukModel> get copyWith =>
      throw _privateConstructorUsedError;
}
