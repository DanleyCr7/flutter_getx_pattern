import 'package:cloud_cliente/app/data/model/client.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardClient extends StatelessWidget {
  // ClientModel cliente;

  // CardClient({Key? key, required this.cliente}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300, //                   <--- border color
            width: 0.5,
          ),
        ),
      ),
      padding: EdgeInsets.fromLTRB(5, 8, 5, 8),
      margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://1.bp.blogspot.com/-fco8CRivKY8/XglVbwzvVRI/AAAAAAAAeao/G1CQ_ljrt1AsLAfolHsQYGV_TuGAi-jNACNcBGAsYHQ/s1600/Kimetsu-no-Yaiba-Demon%2BSlayer-wallpapers-para-celular-tanjiro%2B%25283%2529.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 5, 0, 0),
                      child: Text('Cliente',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text('Email@email.com',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          )),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blueAccent,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                )
              ],
            )
          ]),
    );
  }
}
