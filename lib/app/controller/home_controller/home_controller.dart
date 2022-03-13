import 'package:cloud_cliente/app/data/model/model.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //repository required
  final MyRepository? repository;
  HomeController({this.repository}) : assert(repository != null);

  //use o snippet getfinal para criar está variável
  final _postsList = List<MyModel>.empty().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  ///função para recuperar todos os posts
  getAll() {
    repository?.getAll().then((data) {
      this.postList = data;
    });
  }
}
