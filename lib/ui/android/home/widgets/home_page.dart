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
                    return GestureDetector(
                      child: Container(
                          child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(
                                            width: 1.0, color: Colors.black))),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://1.bp.blogspot.com/-fco8CRivKY8/XglVbwzvVRI/AAAAAAAAeao/G1CQ_ljrt1AsLAfolHsQYGV_TuGAi-jNACNcBGAsYHQ/s1600/Kimetsu-no-Yaiba-Demon%2BSlayer-wallpapers-para-celular-tanjiro%2B%25283%2529.jpg'),
                                ),
                              ),
                              title: Text(
                                _.postList[index].title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // subtitle: Text("Intermediate", style: TextStyle(color: Colors.black)),

                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Flexible(
                                      child: Text(_.postList[index].body,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ))),
                                  IconButton(
                                      onPressed: () {
                                        print('Editar');
                                      },
                                      icon: Icon(Icons.edit,
                                          color: Colors.black, size: 25.0)),
                                  IconButton(
                                      onPressed: () {
                                        print('Editar');
                                      },
                                      icon: Icon(Icons.delete_forever_sharp,
                                          color: Colors.red, size: 25.0))
                                ],
                              ),
                              trailing: null)),
                      onTap: () => {},
                    );
                  },
                );
        }),
      ),
    );
  }
}
