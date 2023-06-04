import 'portfolio.dart';
import 'portfolio_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = 'portfolio.db';
  static const _databaseVersion = 1;

  static final DatabaseHelper instance = DatabaseHelper._();

  Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath!, _databaseName);

    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE portfolios (
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

  Future<int> insertPortfolio(Portfolio portfolio) async {
    final db = await database;
    return await db.insert(
      'portfolios',
      portfolio.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Portfolio>> getPortfolios() async {
    final db = await database;
    final maps = await db.query('portfolios');
    return List.generate(maps.length, (index) {
      return Portfolio.fromMap(maps[index]);
    });
  }
}
