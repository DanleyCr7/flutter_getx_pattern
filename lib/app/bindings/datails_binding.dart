import 'package:cloud_cliente/app/controller/detail_controller/detail_controller.dart';
import 'package:cloud_cliente/app/data/providers/api.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
