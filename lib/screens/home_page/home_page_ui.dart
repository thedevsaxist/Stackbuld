import 'package:flutter/material.dart';  // change this to the path to your commons.dart file

part 'home_page_logic.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUi();
}

class _HomePageUi extends HomePageLogic {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
