import 'package:flutter/material.dart';

class FeedLoadingPage extends StatelessWidget {
  const FeedLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircularProgressIndicator(),
      ],
    );
  }
}
