import 'package:flutter/material.dart';

import '../../text_styles/text_styles_const.dart';
import '../circle_avatar/custom_circular_photo.dart';

class CustomCardAuthorWidget extends StatelessWidget {
  const CustomCardAuthorWidget({
    Key? key,
    required this.userAuthorImageProfile,
    required this.borderColor,
    required this.userAuthorName,
  }) : super(key: key);

  final String userAuthorImageProfile;
  final String borderColor;
  final String userAuthorName;

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        width: currentSize.width * 0.8,
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomCircularPhoto(
                height: 60,
                width: 45,
                photo: userAuthorImageProfile,
                borderColor: borderColor,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              userAuthorName,
              style: TextStylesConst.tittleCard,
            )
          ],
        ),
      ),
    );
  }
}
