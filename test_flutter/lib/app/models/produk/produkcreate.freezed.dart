// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produkcreate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProdukCreate _$ProdukCreateFromJson(Map<String, dynamic> json) {
  return _ProdukCreate.fromJson(json);
}

/// @nodoc
mixin _$ProdukCreate {
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_barang')
  String? get kodeBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_barang')
  int? get jumlahBarang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdukCreateCopyWith<ProdukCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdukCreateCopyWith<$Res> {
  factory $ProdukCreateCopyWith(
          ProdukCreate value, $Res Function(ProdukCreate) then) =
      _$ProdukCreateCopyWithImpl<$Res, ProdukCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'kode_barang') String? kodeBarang,
      @JsonKey(name: 'jumlah_barang') int? jumlahBarang});
}

/// @nodoc
class _$ProdukCreateCopyWithImpl<$Res, $Val extends ProdukCreate>
    implements $ProdukCreateCopyWith<$Res> {
  _$ProdukCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? kodeBarang = freezed,
    Object? jumlahBarang = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProdukCreateCopyWith<$Res>
    implements $ProdukCreateCopyWith<$Res> {
  factory _$$_ProdukCreateCopyWith(
          _$_ProdukCreate value, $Res Function(_$_ProdukCreate) then) =
      __$$_ProdukCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'kode_barang') String? kodeBarang,
      @JsonKey(name: 'jumlah_barang') int? jumlahBarang});
}

/// @nodoc
class __$$_ProdukCreateCopyWithImpl<$Res>
    extends _$ProdukCreateCopyWithImpl<$Res, _$_ProdukCreate>
    implements _$$_ProdukCreateCopyWith<$Res> {
  __$$_ProdukCreateCopyWithImpl(
      _$_ProdukCreate _value, $Res Function(_$_ProdukCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaBarang = freezed,
    Object? kodeBarang = freezed,
    Object? jumlahBarang = freezed,
  }) {
    return _then(_$_ProdukCreate(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProdukCreate implements _ProdukCreate {
  _$_ProdukCreate(
      {@JsonKey(name: 'nama_barang') this.namaBarang,
      @JsonKey(name: 'kode_barang') this.kodeBarang,
      @JsonKey(name: 'jumlah_barang') this.jumlahBarang});

  factory _$_ProdukCreate.fromJson(Map<String, dynamic> json) =>
      _$$_ProdukCreateFromJson(json);

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
  String toString() {
    return 'ProdukCreate(namaBarang: $namaBarang, kodeBarang: $kodeBarang, jumlahBarang: $jumlahBarang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProdukCreate &&
            (identical(other.namaBarang, namaBarang) ||
                other.namaBarang == namaBarang) &&
            (identical(other.kodeBarang, kodeBarang) ||
                other.kodeBarang == kodeBarang) &&
            (identical(other.jumlahBarang, jumlahBarang) ||
                other.jumlahBarang == jumlahBarang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, namaBarang, kodeBarang, jumlahBarang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProdukCreateCopyWith<_$_ProdukCreate> get copyWith =>
      __$$_ProdukCreateCopyWithImpl<_$_ProdukCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdukCreateToJson(
      this,
    );
  }
}

abstract class _ProdukCreate implements ProdukCreate {
  factory _ProdukCreate(
          {@JsonKey(name: 'nama_barang') final String? namaBarang,
          @JsonKey(name: 'kode_barang') final String? kodeBarang,
          @JsonKey(name: 'jumlah_barang') final int? jumlahBarang}) =
      _$_ProdukCreate;

  factory _ProdukCreate.fromJson(Map<String, dynamic> json) =
      _$_ProdukCreate.fromJson;

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
  @JsonKey(ignore: true)
  _$$_ProdukCreateCopyWith<_$_ProdukCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
