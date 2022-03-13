import 'package:cloud_cliente/app/controller/detail_controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
//repository and controller  injection bindings
  final DetailsController detailsController = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Detail Page')),
        body: Container(
            child: Column(
          children: [
            Text(
              '${detailsController.post.title}',
            ),
          ],
        )));
  }
}
