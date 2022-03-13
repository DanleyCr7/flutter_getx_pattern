import 'package:cloud_cliente/app/controller/client_controller/client_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientPage extends GetView<ClientController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ClientPage')),
        body: SafeArea(child: Text('ClientController')));
  }
}
