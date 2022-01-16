import 'package:controle_gastos/models/consumacao_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/pagamento_model.dart';

class GastosDataBaseHelper{
  GastosDataBaseHelper();

  static final Future<Database> database = getDatabasesPath().then((String path) {
    return openDatabase(
      join(path, 'gastos.db'),
      onCreate: (db, version) {
        db.execute(
          'Create table tbconsumacao('
          'pkcodconsumacao INTEGER PRIMARY KEY AUTOINCREMENT,'
          'vendedor TEXT NOT NULL,'
          'dtconsumo TEXT NOT NULL,'
          'fkcodpagamento INTEGER NOT NULL)'
        );
        db.execute(
          'Create table tbpagamento('
          'pkcodpagamento INTEGER PRIMARY KEY AUTOINCREMENT,'
          'sigla TEXT  NOT NULL,'
          'dtvencimento TEXT  NOT NULL)'
        );
      },  
      version: 1,
    );
  });

  Future<int> inserePagamento(Pagamento pagamentoModel) async {
    Database db = await database;
    return await db.insert(
      'tbpagamentos',
      pagamentoModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  
  Future<int> insereConsumo(Consumacao consumacaoModel) async {
    Database db = await database;
    return await db.insert(
      'tbconsumacao',
      consumacaoModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}