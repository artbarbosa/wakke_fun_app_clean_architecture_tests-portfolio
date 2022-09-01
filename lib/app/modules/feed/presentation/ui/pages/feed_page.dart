import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_icons_const.dart';
import 'package:wakke_fun_app/app/_design_system/text_styles/text_styles_const.dart';

import '../../../../../_design_system/widgets/cards/custom_card_feed_widget.dart';
import '../../../../../_design_system/widgets/cards/custom_card_top_ten_widget.dart';
import '../../../../../core/quiz/infra/models/quiz_model.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    Key? key,
    required this.listQuizzes,
  }) : super(key: key);

  final List<QuizModel> listQuizzes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AppIconsConst.flame, height: 18),
                const SizedBox(width: 5),
                Text(
                  'Top 10',
                  style: TextStylesConst.tittleFeed,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopTenWidget(
                  coverImage: listQuizzes[index + 10].coverImage,
                  index: index,
                  borderColor: listQuizzes[index + 10]
                              .userAuthorBorderModel
                              ?.color1 !=
                          null
                      ? listQuizzes[index + 10].userAuthorBorderModel!.color1
                      : '#9E9E9E',
                  userAuthorImageProfile:
                      listQuizzes[index + 10].userAuthorImageProfile ?? '',
                  userAuthorName: listQuizzes[index + 10].userAuthorName,
                  description: listQuizzes[index + 10].description,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(AppIconsConst.chat, height: 18),
                const SizedBox(width: 5),
                Text(
                  'Está acontecendo...',
                  style: TextStylesConst.tittleFeed,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listQuizzes.length,
              itemBuilder: (context, index) => CustomCardFeedWidget(
                borderColor: listQuizzes[index].userAuthorBorderModel != null
                    ? listQuizzes[index].userAuthorBorderModel!.color1
                    : '#9E9E9E',
                photo: listQuizzes[index].userAuthorImageProfile ?? '',
                tittle: listQuizzes[index].userAuthorName,
                coverImage: listQuizzes[index].coverImage,
                gamesExecutedQty: listQuizzes[index].gamesExecutedQty,
                commentsQty: listQuizzes[index].commentsQty,
                evaluationGrade: listQuizzes[index].evaluationGrade,
                description: listQuizzes[index].description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
