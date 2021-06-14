import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDbProvider {
  setDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "Notification.db");
    final db = openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return db;
  }

  _onCreatingDatabase(Database database, int version) async {
    await database.execute("CREATE TABLE notification(timestamp TEXT ,payload TEXT)");
    //can add more table creation
  }
}
