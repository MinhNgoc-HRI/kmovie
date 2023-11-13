import 'package:sqflite/sqflite.dart';

class LocalStore {
  static LocalStore? _instance;
  late Database _database;

  LocalStore._();

  factory LocalStore.getInstance() {
    _instance ??= LocalStore._();
    return _instance!;
  }

  Future<void> initialize() async {
    // Khởi tạo cơ sở dữ liệu
    _database = await openDatabase(
      'app_storage.db',
      version: 1,
      onCreate: (db, version) {
        // Tạo bảng và các cấu trúc dữ liệu
        db.execute(
            'CREATE TABLE USER_INFO (id INTEGER PRIMARY KEY, name TEXT, value TEXT)');
      },
    );
  }

  Future<void> insertData(String name, String value) async {
    await getDataByName(name);
    // await _database.insert('USER_INFO', {'name': name, 'value': value});
  }

  Future<List<Map<String, dynamic>>> getData() async {
    return await _database.query('USER_INFO');
  }

  Future<List<Map<String, dynamic>>> getDataByName(String name) async {
    return await _database.query('USER_INFO',
        where: 'name = ?',
        whereArgs: [name],
        distinct: true,
        columns: ['value']);
  }
}
