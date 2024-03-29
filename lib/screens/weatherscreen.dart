// import 'package:api2/controller/weatherscreencontroller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreen extends GetView<WeatherSreenController> {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut(() => WeatherSreenController());
//     return Scaffold(
//       appBar: AppBar(title: Text("Weather/timezone")),
//       body: LayoutBuilder(builder: (context, con) {
//         return SizedBox(
//           width: con.maxWidth,
//           height: con.maxHeight,
//           child: Center(
//             child: Obx(
//               () => controller.loder.value
//                   ? CircularProgressIndicator()
//                   : Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Obx(() => Text(
//                             "Temperature : ${controller.weatherModel.value.main!.temp.toString()}")),
//                       ],
//                     ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
