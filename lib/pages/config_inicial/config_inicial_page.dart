import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigInicial extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ConfigInicialState();

}

class _ConfigInicialState extends State<ConfigInicial>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: const Text('Meios de Pagamento'),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text('Abreviação do meio de pagamento'),
                  TextFormField(
                    validator: (meioPagementoValue){

                    },
                  ),
                  const Text('Digite o dia do mês do vencimento'),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (dtVencimentoValue){},
                  ),
                  MaterialButton(
                    child: const Icon(Icons.save) ,
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        //Adiciona dados 
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    }
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
  
}