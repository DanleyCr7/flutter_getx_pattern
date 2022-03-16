import 'package:cloud_cliente/app/bindings/datails_binding.dart';
import 'package:cloud_cliente/app/controller/detail_controller/detail_controller.dart';
import 'package:cloud_cliente/app/controller/home_controller/home_controller.dart';
import 'package:cloud_cliente/app/data/providers/api.dart';
import 'package:cloud_cliente/app/data/repository/posts_repository.dart';
import 'package:cloud_cliente/ui/android/add_client/add_client.dart';
import 'package:cloud_cliente/ui/android/details/detail_page.dart';
import 'package:cloud_cliente/ui/android/home/widgets/card_cliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePage extends GetView<HomeController> {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          tooltip: "Save Todo and Retrun to List",
          onPressed: () {
            Get.to(AddClientPage());
          },
        )
      ]),
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
                    return CardClient();
                  },
                );
        }),
      ),
    );
  }
}
