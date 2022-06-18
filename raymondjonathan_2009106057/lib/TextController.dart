import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class textcontroller extends GetxController{
  var UserID = ''.obs;
  var TOPUP = ''.obs;
  var Email = ''.obs;
  var harga = 0.obs;
  var selectedIndex = 0.obs;
  
  TextEditingController USER = TextEditingController();
  TextEditingController TOP = TextEditingController();
  TextEditingController EMAIL = TextEditingController();

  @override
  void onClose() {
    USER.dispose();
    super.onClose();
  }

  void pembayaran(int kurensi){
    UserID(USER.text);
    TOPUP(TOP.text);
    Email(EMAIL.text);
    harga.value = int.parse(TOPUP.value) * kurensi;
  }

  void selectIndex(int index){
    selectedIndex.value = index;
  }
}