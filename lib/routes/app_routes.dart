import 'package:cloud_cliente/app/bindings/client_bindind.dart';
import 'package:cloud_cliente/app/bindings/datails_binding.dart';
import 'package:cloud_cliente/routes/app_pages.dart';
import 'package:cloud_cliente/ui/android/add_client/add_client.dart';
import 'package:cloud_cliente/ui/android/details/detail_page.dart';
import 'package:cloud_cliente/ui/android/home/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),
    GetPage(
        name: Routes.ADD_CLIENT,
        page: () => AddClientPage(),
        binding: ClientBinding()) //dependencias de details via rota
  ];
}
