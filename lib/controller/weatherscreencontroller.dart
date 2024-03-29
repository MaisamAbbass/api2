// import 'package:api2/controller/singelton/apicontroller.dart';
// import 'package:api2/model/weathermodel.dart';
// import 'package:get/get.dart';

// class WeatherSreenController extends GetxController {
//   RxBool loder = true.obs;
//   Rx<WeatherModel> weatherModel = WeatherModel().obs;

//   getweatherdata() async {
//     weatherModel.value =
//         await ApiController.irt.getWeatherdataapicontroller(25.2048, 55.2708);
//     loder.value = false;
//   }

//   @override
//   void onInit() {
//     super.onInit();
//     getweatherdata();
//   }
// }
