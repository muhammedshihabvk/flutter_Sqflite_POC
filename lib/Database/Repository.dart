import 'package:sample2/Database/SQLiteDbProvider.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late SQLiteDbProvider _sqLiteDbProvider;

  Repository() {
    _sqLiteDbProvider = SQLiteDbProvider();
  }

  static Database? _database;

  Future<Database?> get getDatabase async {
    if (_database != null) return _database;
    _database = await _sqLiteDbProvider.setDatabase();
    return _database;
  }

  insertData(table, data) async {
    var connection = await getDatabase;
    return await connection?.insert(table, data);
  }

  readData(table) async {
    var connection = await getDatabase;
    return await connection?.query(table);
  }
}
