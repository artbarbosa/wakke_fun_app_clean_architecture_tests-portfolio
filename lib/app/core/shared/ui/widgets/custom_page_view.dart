import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../modules/feed/presentation/router/feed_router.dart';
import '../controllers/custom_bottom_navigation_bar_controller.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    final CustomBottomNavigationBarController controller =
        GetIt.I.get<CustomBottomNavigationBarController>();

    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      children: const [
        Scaffold(
          body: Center(
            child: Text('Badge'),
          ),
        ),
        Scaffold(
          body: Center(
            child: Text('Add'),
          ),
        ),
        FeedRouter(),
        Scaffold(
          body: Center(
            child: Text('Profile'),
          ),
        ),
        Scaffold(
          body: Center(
            child: Text('More'),
          ),
        ),
      ],
    );
  }
}
