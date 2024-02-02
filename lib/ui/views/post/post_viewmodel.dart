import 'package:flutter/material.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class PostViewModel extends BaseViewModel implements Initialisable {
  final _bottomSheetService = locator<BottomSheetService>();

  void initialize() {
    print("hello");
    setBusy(true);
    Future.delayed( const Duration(seconds: 5), () {
      setBusy(false);
    });
  }



  void showModel() {
    _bottomSheetService.showBottomSheet(title: "Hello World",);
  }



  @override
  void initialise() {
    initialize();
  }
}
