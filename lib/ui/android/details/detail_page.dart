import 'package:cloud_cliente/app/controller/home_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<HomeController> {
  const DetailsPage({Key? key}) : super(key: key);

//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Container(
        child: const Text('Detail page'),
      ),
    );
  }
}
