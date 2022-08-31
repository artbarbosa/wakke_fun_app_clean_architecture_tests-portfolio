import 'package:flutter/material.dart';

class CustomCircularPhoto extends StatelessWidget {
  final String photo;
  const CustomCircularPhoto({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 36,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(photo, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
