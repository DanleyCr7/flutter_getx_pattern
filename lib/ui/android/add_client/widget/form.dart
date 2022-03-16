import 'package:cloud_cliente/app/data/model/client.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormUi extends StatelessWidget {
  // ClientModel cliente;
  String hintText;

  FormUi({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.4),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: TextFormField(
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Você precisa informar seu codigo de acesso';
            }
            return null;
          },
          onSaved: (txt) {},
          obscureText: false,
          expands: true,
          maxLines: null,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 8, right: 20, top: 10, bottom: 10),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
