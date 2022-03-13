import 'package:cloud_cliente/app/data/model/client.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  final MyRepository? repository;

  ClientController({this.repository}) : assert(repository != null);

  final _clients = List<ClientModel>.empty().obs;
  get clients => this._clients.value;
  set clients(value) => this._clients.value = value;
}
