class Pagamento{
  late int _pkcodpagamento;
  late String _sigla;
  late String _dtpagamento;

  Pagamento(
    this._pkcodpagamento,
    this._sigla,
    this._dtpagamento
  );

  void setPkcodPagamento()
  void setSigla()
  void setDtPagamento()

  Map<String, dynamic> toMap(){
    return {
      'sigla': _sigla,
      'dtpagamento': _dtpagamento
    };
  }
  
}