import 'package:api2/controller/timezonescreencontroller.dart';
import 'package:api2/screens/timezonescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<timezonecontroller> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => timezonecontroller());
    return Scaffold(
      appBar: AppBar(title: Text("Weather/timezone")),
      body: LayoutBuilder(builder: (context, con) {
        return SizedBox(
          width: con.maxWidth,
          height: con.maxHeight,
          child: Center(
            child: Obx(
              () => controller.loder.value
                  ? CircularProgressIndicator()
                  : Obx(
                      () => ListView.builder(
                        itemCount: controller.allZone.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            onTap: () async {
                              await controller
                                  .getweatherdata(controller.allZone[index]);
                              Get.to(TimeZoneScreen());
                            },
                            title: Text(controller.allZone[index]),
                          );
                        }),
                      ),
                    ),
            ),
          ),
        );
      }),
    );
  }
}
