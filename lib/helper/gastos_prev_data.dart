import 'dart:convert';

class GastosHelper{
  static const String dadosTexto = """ 
    {
      "tipos_pagamento":[
          {
              "sigla": "hiper",
              "dt_vencimento": "dd-mm-yyyy"
          },
          {
              "sigla": "hiper",
              "dt_vencimento": "dd-mm-yyyy"
          }
      ],
      "consumacao": [
          {
              "gasto": "Padaria do seu ze",
              "dt_consumo": "dd-mm-yyyy",
              "sigla": "hiper"
          }
      ]
    }
  """;
  Map<String, dynamic>? dados;

  GastosHelper(){
    dados = jsonDecode(dadosTexto);
  }
}