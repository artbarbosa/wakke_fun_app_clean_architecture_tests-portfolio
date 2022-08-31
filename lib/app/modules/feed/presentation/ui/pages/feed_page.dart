import 'package:flutter/material.dart';

import '../../../../../core/quiz/infra/models/quiz_model.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    Key? key,
    required this.listQuizzes,
  }) : super(key: key);

  final List<QuizModel> listQuizzes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColorsConst.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 23, top: 30),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: const [
              // const ListCategoriesHorizontalComponent(),
              Spacer(),
              // const ListBannersHorizontalComponent(),
              Spacer(),
              // ListProductHorizontalComponent(listProducts: listProducts),
              Spacer(),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
