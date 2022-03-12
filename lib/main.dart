import 'package:cloud_cliente/app/bindings/home_binding.dart.dart';
import 'package:cloud_cliente/routes/app_pages.dart';
import 'package:cloud_cliente/ui/android/home/widgets/home_page.dart';
import 'package:cloud_cliente/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:cloud_cliente/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL, //Rota inicial
    initialBinding: HomeBinding(), // dependencias iniciais
    theme: appThemeData, //Tema personalizado app
    defaultTransition: Transition.fade, // Transição de telas padrão
    getPages: AppPages
        .routes, // Seu array de navegação contendo as rotas e suas pages
    home: HomePage(), // Page inicial
    locale: Locale('pt', 'BR'), // Língua padrão
  ));
}
