import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_fun_app/app/_design_system/consts/app_images_const.dart';
import 'package:wakke_fun_app/app/_design_system/text_styles/text_styles_const.dart';
import 'package:wakke_fun_app/app/_design_system/widgets/circle_avatar/custom_circular_photo.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/quiz_model.dart';

import '../../../../../_design_system/consts/app_icons_const.dart';
import '../../../../../core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.quiz,
  }) : super(key: key);

  final QuizModel quiz;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final controllerBottomNavigation =
      GetIt.I.get<CustomBottomNavigationBarController>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;

    return SizedBox(
      height: currentSize.height,
      width: currentSize.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: currentSize.height * 0.4,
              width: currentSize.width,
              child: Image.network(
                widget.quiz.coverImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppIconsConst.headerBack,
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: currentSize.width * 0.8,
                      child: Text(
                        widget.quiz.title,
                        maxLines: 2,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: currentSize.width * 0.9,
                  height: currentSize.height * 0.65,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Material(
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
                                  photo:
                                      widget.quiz.userAuthorImageProfile ?? '',
                                  borderColor: widget.quiz.userAuthorBorderModel
                                              ?.color1 !=
                                          null
                                      ? widget
                                          .quiz.userAuthorBorderModel!.color1
                                      : '#E9E9E9',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                widget.quiz.userAuthorName,
                                style: TextStylesConst.tittleCard,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(AppIconsConst.playerViolet, height: 18),
                            const SizedBox(width: 5),
                            Text(
                              'Desafio',
                              style: TextStylesConst.tittleFeed,
                            ),
                            const Spacer(),
                            const Icon(Icons.more_vert),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text(
                            widget.quiz.description,
                            style: TextStylesConst.descriptionCard,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(AppIconsConst.coroaRoxa, height: 18),
                            const SizedBox(width: 5),
                            Text(
                              'Pessoas(${widget.quiz.gamesExecutedQty})',
                              style: TextStylesConst.tittleFeed,
                            ),
                            const Spacer(),
                            Image.asset(AppIconsConst.games, height: 18),
                            const SizedBox(width: 5),
                            Text(
                              'Times(${widget.quiz.commentsQty})',
                              style: TextStylesConst.tittleFeed,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: SizedBox(
                          height: currentSize.height * 0.27,
                          child: ListView(
                            children: List.generate(
                              10,
                              (index) => Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: CustomCircularPhoto(
                                      height: 60,
                                      width: 45,
                                      photo:
                                          widget.quiz.userAuthorImageProfile ??
                                              '',
                                      borderColor: widget
                                                  .quiz
                                                  .userAuthorBorderModel
                                                  ?.color1 !=
                                              null
                                          ? widget.quiz.userAuthorBorderModel!
                                              .color1
                                          : '#E9E9E9',
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    widget.quiz.userAuthorName,
                                    style: TextStylesConst.tittleCard,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(AppImagesConst.buttonComments),
                            Image.asset(AppImagesConst.buttonFav),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
