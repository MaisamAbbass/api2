import 'package:api2/controller/timezonescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeZoneScreen extends GetView<timezonecontroller> {
  const TimeZoneScreen({super.key});

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
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Text(
                            "timezone : ${controller.timemodel.value.datetime}")),
                      ],
                    ),
            ),
          ),
        );
      }),
    );
  }
}
