import 'package:flutter/material.dart';

class CustomBottomNavigationBarController extends ValueNotifier<int> {
  CustomBottomNavigationBarController(super.value);
  PageController pageController = PageController(initialPage: 2);

  int get selectedIndex => value;

  void changePage(int index) {
    pageController.jumpToPage(index);
    value = index;
  }
}
