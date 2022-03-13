import 'package:cloud_cliente/app/bindings/datails_binding.dart';
import 'package:cloud_cliente/app/controller/detail_controller/detail_controller.dart';
import 'package:cloud_cliente/app/controller/home_controller/home_controller.dart';
import 'package:cloud_cliente/app/data/providers/api.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:cloud_cliente/ui/android/details/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePage extends GetView<HomeController> {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: GetX<HomeController>(initState: (state) {
          Get.find<HomeController>().getAll();
        }, builder: (_) {
          return _.postList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.postList[index].title),
                      subtitle: Text(_.postList[index].body),
                      onTap: () async {
                        await Get.put(DetailsController(
                                repository: MyRepository(
                                    apiClient: MyApiClient(
                                        httpClient: http.Client()))))
                            .editar(_.postList[index].id);
                        Get.to(DetailsPage(), binding: DetailsBinding());
                      },
                    );
                  },
                  itemCount: _.postList.length,
                );
        }),
      ),
    );
  }
}
