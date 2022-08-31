import '../models/quiz_model.dart';
import 'json_to_user_author_border.dart';
import 'json_to_user_author_icon.dart';

class JsonToQuiz {
  static QuizModel fromJson(dynamic json) {
    return QuizModel(
      id: json['_id'],
      isPrivate: json['privado'],
      activeStatus: json['status_ativo'],
      finished: json['finalizado'],
      challengeId: json['desafio_id'],
      title: json['titulo'],
      description: json['descricao'],
      userAuthorId: json['usuario_autor'],
      userAuthorName: json['usuario_autor_nome'],
      userAuthorNickname: json['usuario_autor_apelido'],
      dateCreation: json['data_criacao'],
      canBeDeleted: json['pode_ser_excluido'],
      gamesExecutedQty: json['partidas_executadas_qtd'],
      commentsQty: json['comentarios_qtd'],
      avarageGrade: json['media_nota']?.toDouble() ?? 0.0,
      avarageCorrects: json['media_acertos']?.toDouble() ?? 0.0,
      averagePercentageCorrect:
          json['porcetagem_media_acertos']?.toDouble() ?? 0.0,
      mediumDuration: json['media_duracao']?.toDouble() ?? 0.0,
      evaluationGrade: json['avaliacao_nota']?.toDouble() ?? 0.0,
      coverImage: json['imagem_capa'],
      linkVideo: json['link_video'],
      numeroNic: json['numero_nic'],
      userAuthorImageProfile: json['usuario_autor_imagem_perfil'],
      userAuthorIconModel: json['usuario_autor_icone'] != null
          ? JsonToUserAuthorIcon.fromJson(json['usuario_autor_icone'])
          : null,
      userAuthorBorderModel: json['usuario_autor_borda'] != null
          ? JsonToUserAuthorBorder.fromJson(json['usuario_autor_borda'])
          : null,
    );
  }
}
