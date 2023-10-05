import 'package:sqflite/sqflite.dart' as sql;
import 'package:test_flutter/app/models/produk/produkcreate.dart';
import 'package:test_flutter/app/models/produk/produkmodel.dart';

class DatabaseService {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE produk(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        nama_barang TEXT  NOT NULL,
        kode_barang TEXT  NOT NULL,
        jumlah_barang INTEGER NOT NULL,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'database.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable(database);
      },
    );
  }

  static Future<List<ProdukModel>> getAll() async {
    final db = await DatabaseService.db();
    final result = await db.query('produk');

    return result.map((e) => ProdukModel.fromJson(e)).toList();
  }

  static Future<int> createItem(ProdukCreate produkCreate) async {
    final db = await DatabaseService.db();

    final result = await db.insert('produk', produkCreate.toJson(),
        conflictAlgorithm: sql.ConflictAlgorithm.replace);

    return result;
  }

  static Future<int> updateItem(int id, ProdukCreate produkCreate) async {
    final db = await DatabaseService.db();

    final result = await db.update('produk', produkCreate.toJson(),
        where: 'id = ?',
        whereArgs: [id],
        conflictAlgorithm: sql.ConflictAlgorithm.replace);

    return result;
  }

  static Future<List<ProdukModel>> getById(int id) async {
    final db = await DatabaseService.db();
    final result = await db.query('produk', where: 'id = ? ', whereArgs: [id]);

    return result.map((e) => ProdukModel.fromJson(e)).toList();
  }

  static Future<int> delete(int id) async {
    final db = await DatabaseService.db();

    final result = await db.delete('produk', where: 'id = ?', whereArgs: [id]);
    return result;
  }

  static Future<List<ProdukModel>> searchByName(String value) async {
    final db = await DatabaseService.db();
    final result = await db.query('produk',
        where: "LOWER(nama_barang) LIKE ?", whereArgs: ['%$value%']);

    return result.map((e) => ProdukModel.fromJson(e)).toList();
  }
}
