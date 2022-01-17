class Pagamento{
  late int _pkcodpagamento;
  late String _sigla;
  late String _dtpagamento;

  Pagamento(
    this._pkcodpagamento,
    this._sigla,
    this._dtpagamento
  );

  set pkcodpagamento(int newValue) => _pkcodpagamento = newValue;

  set sigla(String newSigla) => sigla = newSigla;
  
  set dtPagamento(String newDtPagamento) =>  _dtpagamento = newDtPagamento;

  Map<String, dynamic> toMap(){
    return {
      'sigla': _sigla,
      'dtpagamento': _dtpagamento
    };
  }
  
}