import 'package:flutter/material.dart';

import '../../consts/app_colors_const.dart';
import '../../text_styles/text_styles_const.dart';
import '../circle_avatar/custom_circular_photo.dart';

class CustomCardTopTenWidget extends StatelessWidget {
  const CustomCardTopTenWidget(
      {Key? key,
      required this.coverImage,
      required this.index,
      required this.borderColor,
      required this.userAuthorImageProfile,
      required this.userAuthorName,
      required this.description})
      : super(key: key);

  final String coverImage;
  final int index;
  final String borderColor;
  final String userAuthorImageProfile;
  final String userAuthorName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Colors.transparent,
        width: 210,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(
                coverImage,
                width: 210,
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Text(
                      (index + 1).toString(),
                      style: TextStylesConst.numberCardHorizontalForeground,
                    ),
                    Text(
                      (index + 1).toString(),
                      style: TextStylesConst.numberCardHorizontal,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColorsConst.primary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            CustomCircularPhoto(
                              height: 20,
                              width: 18,
                              borderColor: borderColor,
                              photo: userAuthorImageProfile,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              userAuthorName,
                              style: TextStylesConst.tittleCardHorizontal,
                            ),
                          ],
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          description,
                          style: TextStylesConst.descriptionCardHorizontal,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
