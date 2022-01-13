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
          'Create table tbgastos('
          'pkcodconsumacao INTEGER PRIMARY KEY,'
          'vendedor TEXT,'
          'dtconsumo TEXT,'
          'fkcodpagamento INTEGER)'
        );
        db.execute(
          'Create table tbpagamento('
          'pkcodpagamento INTEGER PRIMARY KEY,'
          'sigla TEXT,'
          'dtvencimento TEXT)'
        );        
      },
      version: 1,
    );
  });
}