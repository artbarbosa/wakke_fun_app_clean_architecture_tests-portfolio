import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_colors_const.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_icons_const.dart';
import 'package:wakke_fun_app/app/_design_system/text_styles/text_styles_const.dart';

import '../../../../../_design_system/widgets/circle_avatar/custom_circular_photo.dart';
import '../../../../../core/quiz/infra/models/quiz_model.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    Key? key,
    required this.listQuizzes,
  }) : super(key: key);

  final List<QuizModel> listQuizzes;

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      color: Colors.green,
                      width: 200,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.network(
                              listQuizzes[index].coverImage,
                              width: 200,
                              height: 200,
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
                                    index.toString(),
                                    style: TextStylesConst
                                        .numberCardHorizontalForeground,
                                  ),
                                  Text(
                                    index.toString(),
                                    style: TextStylesConst.numberCardHorizontal,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5, left: 5, right: 5),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 55,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: AppColorsConst.theme,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          CustomCircularPhoto(
                                            height: 20,
                                            width: 18,
                                            borderColor: listQuizzes[index]
                                                        .userAuthorBorderModel !=
                                                    null
                                                ? listQuizzes[index]
                                                    .userAuthorBorderModel!
                                                    .color1
                                                : '#9E9E9E',
                                            photo: listQuizzes[index]
                                                    .userAuthorImageProfile ??
                                                '',
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            listQuizzes[index].userAuthorName,
                                            style: TextStylesConst
                                                .tittleCardHorizontal,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        overflow: TextOverflow.ellipsis,
                                        listQuizzes[index].description,
                                        style: TextStylesConst
                                            .descriptionCardHorizontal,
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
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listQuizzes.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          leading: CustomCircularPhoto(
                            borderColor:
                                listQuizzes[index].userAuthorBorderModel != null
                                    ? listQuizzes[index]
                                        .userAuthorBorderModel!
                                        .color1
                                    : '#9E9E9E',
                            photo:
                                listQuizzes[index].userAuthorImageProfile ?? '',
                          ),
                          title: Text(
                            listQuizzes[index].userAuthorName,
                            style: TextStylesConst.tittleCard,
                          ),
                          trailing: const Icon(Icons.more_vert),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: SizedBox(
                              height: 200,
                              width: currentSize.width,
                              child: Image.network(
                                listQuizzes[index].coverImage,
                                fit: BoxFit.fill,
                              )),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset(
                              AppIconsConst.account,
                              height: 25,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              listQuizzes[index].gamesExecutedQty.toString(),
                              style: TextStylesConst.tittleCard,
                            ),
                            const Spacer(),
                            Image.asset(
                              AppIconsConst.add,
                              height: 25,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              listQuizzes[index].commentsQty.toString(),
                              style: TextStylesConst.tittleCard,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              AppIconsConst.account,
                              height: 25,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              listQuizzes[index].avarageGrade.toString(),
                              style: TextStylesConst.tittleCard,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 40,
                          child: Text(listQuizzes[index].description,
                              style: TextStylesConst.descriptionCard),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
