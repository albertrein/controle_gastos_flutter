import 'package:controle_gastos/pages/consumacao/listagem_consumos.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //flutter engine
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Gastos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:ConsumacaoPage(),
    );
  }
}

