class ClientModel {
  int? id;
  String? name;
  String? telefone;
  String? email;

  ClientModel({this.id, this.name, this.telefone, this.email});

  ClientModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.telefone = json['telefone'];
    this.email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
