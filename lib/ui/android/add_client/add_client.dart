import 'package:cloud_cliente/app/controller/client_controller/client_controller.dart';
import 'package:cloud_cliente/ui/android/add_client/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddClientPage extends GetView<ClientController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ClientPage'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(color: Colors.grey[50]),
              child: Column(
                children: [
                  Container(
                      width: 80,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Center(
                        child: Image.asset('assets/logo.png'),
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: FormUi(
                          hintText: 'NOME',
                        ),
                      ),
                      Expanded(
                        child: FormUi(
                          hintText: 'EMAIL',
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    child: Expanded(
                      child: FormUi(
                        hintText: 'ENDERECO',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: double.infinity),
                      child: RaisedButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          'Salvar cliente',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
