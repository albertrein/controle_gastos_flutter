import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeioPagementoForm extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
      Form(
        key: _formKey,
        child: Column(
          children: [
            const Text('Abreviação do meio de pagamento'),
            TextFormField(
              validator: (meioPagementoValue){},
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
      );
  }
  
}