import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_icons_const.dart';

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
    return Scaffold(
      //backgroundColor: AppColorsConst.background,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: listQuizzes.length,
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    leading: CustomCircularPhoto(
                      photo: listQuizzes[index].userAuthorImageProfile ?? '',
                    ),
                    title: Text(listQuizzes[index].userAuthorName),
                    trailing: const Icon(Icons.more_vert),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                        height: currentSize.height * 0.3,
                        width: currentSize.width,
                        child: Image.network(
                          listQuizzes[index].coverImage,
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        AppIconsConst.account,
                        height: 25,
                      ),
                      Text(listQuizzes[index].gamesExecutedQty.toString()),
                      const Spacer(),
                      Image.asset(
                        AppIconsConst.add,
                        height: 25,
                      ),
                      Text(listQuizzes[index].commentsQty.toString()),
                      const SizedBox(height: 4),
                      Image.asset(
                        AppIconsConst.account,
                        height: 25,
                      ),
                      Text(
                        listQuizzes[index].avarageGrade.toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(listQuizzes[index].description),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
