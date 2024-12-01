import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

import '../features/home/data/player_model.dart';
import '../generated/assets.dart';


class DatabaseHelper {
  static DatabaseHelper? _instance;
  static Database? _database;
  final _databaseName = 'connect2.db';
  final _databaseVersion = 1;

  // Singleton pattern
  DatabaseHelper._();

  static DatabaseHelper get instance {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  // Database getter with initialization check
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Initialize database
  Future<Database> _initDatabase() async {
    try {
      return await openDatabase(
        _databaseName,
        version: _databaseVersion,
        onCreate: _onCreate,

      );
    } catch (e) {
      debugPrint('Database initialization error: $e');
      rethrow;
    }
  }

  Future<void> _onCreate(Database db, int version) async {
    // Load and execute SQL script
    String sqlScript = await loadSqlFile();
    await executeSQLScript(db, sqlScript);
  }



  Future<List<Player>> getPlayers() async {
    final Database db = await database;
    try {
      final List<Map<String, dynamic>> maps = await db.query('players');
      debugPrint(maps[0]['name']);
      return List.generate(maps.length, (i) => Player.fromMap(maps[i]));
    } catch (e) {
      debugPrint('Get players error: $e');
      rethrow;
    }
  }


  Future<String> loadSqlFile()async
  {
    return await rootBundle.loadString(Assets.databasePlayers);
  }

  Future<void> executeSQLScript(Database db, String sqlScript) async {
    // Split the script into individual statements
    List<String> statements = sqlScript.split(';')
        .where((statement) => statement.trim().isNotEmpty)
        .toList();

    // Execute each statement
    for (String statement in statements) {
      await db.execute(statement.trim());
    }
  }



}