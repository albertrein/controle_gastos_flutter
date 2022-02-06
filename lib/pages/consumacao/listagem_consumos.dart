import 'package:controle_gastos/helper/gastos_prev_data.dart';
import 'package:controle_gastos/models/consumacao_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class ConsumacaoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ConsumacaoPageContent();

}

class _ConsumacaoPageContent extends State<ConsumacaoPage> {
  GastosHelper gastosHelper = GastosHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumos"),
      ),
      body: Center(
        child: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { 
            return snapshot.connectionState == ConnectionState.waiting ?
            const CircularProgressIndicator() :
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: gastosHelper.dados!['consumacao'].length,
                itemBuilder: (context, index){
                  final item = gastosHelper.dados!['consumacao'][index];
                  return ListTile(
                    title: Text(item['gasto']),
                    subtitle: Text(item['sigla']),
                  );
                }
              ),
            );
           },          
        ),
      ),
    );
  }
  
}