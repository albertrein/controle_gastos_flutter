import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MeioPagementoForm extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.blue, width: 1)
      ),
      margin: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sigla do meio de pagamento'),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (dtVencimentoValue){},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )
                    ),
                  ),
                ),
                const Text('Digite o dia do mês do vencimento'),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (dtVencimentoValue){},
                    decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              ),
              FloatingActionButton.extended(
                icon: Icon(Icons.save, color: Colors.white),
                label: Text("Salvar", style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.greenAccent,
                splashColor: Colors.green,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //Adiciona dados 
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
              )
            ],
          ),
        )
      )
    );
  }
  
}