import 'package:flutter/material.dart';

class FeedErrorPage extends StatelessWidget {
  const FeedErrorPage({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(errorMessage),
      ],
    );
  }
}
