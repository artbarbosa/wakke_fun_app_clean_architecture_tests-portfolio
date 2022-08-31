import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_fun_app/app/modules/feed/presentation/ui/pages/feed_loading.dart';

import '../../../../../_design_system/widgets/app_bar/custom_app_bar_widget.dart';
import '../../../../../_design_system/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import '../../../../../core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';
import '../controllers/feed_controller.dart';
import '../pages/feed_error.dart';
import '../pages/feed_page.dart';
import '../states/feed_states.dart';

class FeedContainerPage extends StatefulWidget {
  const FeedContainerPage({Key? key}) : super(key: key);

  @override
  State<FeedContainerPage> createState() => _FeedContainerPageState();
}

class _FeedContainerPageState extends State<FeedContainerPage> {
  final controller = GetIt.I.get<FeedController>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final controllerBottomNavigation =
      GetIt.I.get<CustomBottomNavigationBarController>();

  @override
  void initState() {
    super.initState();
    // controller.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBarWidget(_scaffoldKey),
      ),
      body: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          if (value is FeedLoadedState) {
            return FeedPage(
              listQuizzes: value.listQuizzes,
            );
          }
          if (value is FeedErrorState) {
            return FeedErrorPage(
              errorMessage: value.errorMessage,
            );
          }
          return const FeedLoadingPage();
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: controllerBottomNavigation,
        builder: (context, value, _) {
          return CustomBottomNavigationBar(
            currentIndex: value,
            onTap: (value) => controllerBottomNavigation.changePage(value),
          );
        },
      ),
    );
  }
}
