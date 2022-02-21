import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/forms/meio_pagemento_form.dart';

class EditMeioPagamento extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _EditMeioPagamentoState();

}

class _EditMeioPagamentoState extends State<EditMeioPagamento>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edição Meio de Pagamento'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
          child: Column(
            children: [
              MeioPagementoForm(),
              const SizedBox(height: 10,),
              const Text('Meios de pagamento cadastrados ...'),
              
            ],
          ),
        ),
      ),
    );
  }

}