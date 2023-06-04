import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'portfolio.dart';

class PortfolioDatabaseHelper {
  static final PortfolioDatabaseHelper instance = PortfolioDatabaseHelper._();

  static Database? _database;

  PortfolioDatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'portfolio.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE portfolios(
        id TEXT PRIMARY KEY,
        name TEXT,
        job TEXT,
        email TEXT,
        phoneNumber TEXT,
        website TEXT,
        address TEXT,
        description TEXT
      )
    ''');
  }

  Future<List<Portfolio>> getPortfolios() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('portfolios');

    return List.generate(maps.length, (index) => Portfolio.fromMap(maps[index]));
  }

  Future<void> insertPortfolio(Portfolio portfolio) async {
    final db = await database;
    await db.insert('portfolios', portfolio.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
