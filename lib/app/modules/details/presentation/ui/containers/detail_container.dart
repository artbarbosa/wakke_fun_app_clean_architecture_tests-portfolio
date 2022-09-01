import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../../_design_system/consts/app_images_const.dart';
import '../../../../../_design_system/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import '../../../../../core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';
import '../../routers/detail_arguments.dart';
import '../pages/detail_page.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  final DetailArguments arguments;

  @override
  State<DetailContainer> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  final controllerBottomNavigation =
      GetIt.I.get<CustomBottomNavigationBarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailPage(quiz: widget.arguments.quiz),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: controllerBottomNavigation,
        builder: (context, value, _) {
          return CustomBottomNavigationBar(
            currentIndex: value,
            onTap: (value) {
              Navigator.pop(context);
              controllerBottomNavigation.changePage(value);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset(AppImagesConst.buttonFun),
        onPressed: () {
          Navigator.pop(context);
          controllerBottomNavigation.changePage(2);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
