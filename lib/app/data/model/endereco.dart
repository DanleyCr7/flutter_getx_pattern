class EnderecoModel {
  int? cliente_id;
  String? cidade;
  String? bairro;
  String? logradouro;
  String? numero;

  EnderecoModel({this.cliente_id, this.cidade, this.bairro, this.logradouro});

  EnderecoModel.fromJson(Map<String, dynamic> json) {
    this.cliente_id = json['cliente_id'];
    this.cidade = json['cidade'];
    this.bairro = json['bairro'];
    this.logradouro = json['logradouro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bairro'] = this.bairro;
    return data;
  }
}
