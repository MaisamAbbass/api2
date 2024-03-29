import 'package:api2/controller/singelton/apicontroller.dart';
import 'package:api2/model/timezonemodel.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class timezonecontroller extends GetxController {
  RxBool loder = true.obs;
  Rx<timezonemodel> timemodel = timezonemodel().obs;
  RxList<String> allZone = RxList([]);

  getweatherdata(String timeZone) async {
    timemodel.value =
        await ApiController.irt.gettimezonedataapicontroller(timeZone);
    loder.value = false;
  }

  gettimezonelist() async {
    allZone.value = await ApiController.irt.getAllTimeZone();
    loder.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    gettimezonelist();
  }
}
