class Consumacao{
  late int _pkcodconsumacao;
  late String _vendedor;
  late String _dtconsumo;
  late int _fkcodpagamento;

  Consumacao(
    this._pkcodconsumacao,
    this._vendedor,
    this._dtconsumo,
    this._fkcodpagamento
  );

  void set vendedor(String vendedor){
    _vendedor = vendedor;
  }

  Map<String, dynamic> toMap(){
    return {
      'vendedor': _vendedor,
      'dtconsumo': _dtconsumo,
      'fkcodpagamento': _fkcodpagamento
    };
  }
}