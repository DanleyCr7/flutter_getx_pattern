import 'package:cloud_cliente/app/controller/client_controller/client_controller.dart';
import 'package:cloud_cliente/app/data/providers/api.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClientBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientController>(() {
      return ClientController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
