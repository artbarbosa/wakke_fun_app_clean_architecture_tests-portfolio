import 'package:flutter/material.dart';

import '../../consts/app_icons_const.dart';
import '../../text_styles/text_styles_const.dart';
import '../circle_avatar/custom_circular_photo.dart';

class CustomCardFeedWidget extends StatelessWidget {
  const CustomCardFeedWidget(
      {Key? key,
      required this.borderColor,
      required this.photo,
      required this.tittle,
      required this.coverImage,
      required this.gamesExecutedQty,
      required this.commentsQty,
      required this.evaluationGrade,
      required this.description})
      : super(key: key);

  final String borderColor;
  final String photo;
  final String tittle;
  final String coverImage;
  final int gamesExecutedQty;
  final int commentsQty;
  final double evaluationGrade;
  final String description;

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                CustomCircularPhoto(
                  borderColor: borderColor,
                  photo: photo,
                ),
                const SizedBox(width: 10),
                Text(
                  tittle,
                  style: TextStylesConst.tittleCard,
                ),
                const Spacer(),
                const Icon(Icons.more_vert),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: SizedBox(
                  height: 200,
                  width: currentSize.width,
                  child: Image.network(
                    coverImage,
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppIconsConst.account,
                  height: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  gamesExecutedQty.toString(),
                  style: TextStylesConst.tittleCard,
                ),
                const Spacer(),
                Image.asset(
                  AppIconsConst.btnComments,
                  height: 16,
                ),
                const SizedBox(width: 5),
                Text(
                  commentsQty.toString(),
                  style: TextStylesConst.tittleCard,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  AppIconsConst.btnFav,
                  height: 17,
                ),
                const SizedBox(width: 5),
                Text(
                  evaluationGrade.toStringAsFixed(1),
                  style: TextStylesConst.tittleCard,
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: Text(
                description,
                style: TextStylesConst.descriptionCard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
