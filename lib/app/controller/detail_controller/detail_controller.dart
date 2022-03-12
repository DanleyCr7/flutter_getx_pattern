import 'package:cloud_cliente/app/data/model/model.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final MyRepository repository;
  DetailsController({required this.repository}) : assert(repository != null);

  final _post = MyModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  //pratique
  editar(post) {
    print('editar');
  }

  //pratique
  delete(id) {
    print('deletar');
  }
}
