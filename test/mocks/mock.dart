import 'package:mocktail/mocktail.dart';
import 'package:wakke_fun_app/app/core/quiz/domain/entities/quiz_entity.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/datasources/quiz_datasourcer_intereface.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/user_author_border_model.dart';
import 'package:wakke_fun_app/app/core/quiz/infra/models/user_author_icon_model.dart';
import 'package:wakke_fun_app/app/core/shared/services/remote/http_client_service_interface.dart';

class IQuizDataSourceMock extends Mock implements IQuizDataSource {}

class HttpServiceMock extends Mock implements IHttpService {}

final quizEntityMokc = QuizEntity(
  id: 'id',
  isPrivate: true,
  activeStatus: true,
  finished: true,
  challengeId: 'challengeId',
  title: 'title',
  description: 'description',
  userAuthorId: 'userAuthorId',
  userAuthorName: 'userAuthorName',
  userAuthorNickname: 'userAuthorNickname',
  dateCreation: 'dateCreation',
  canBeDeleted: true,
);

final userAuthorBorderMock = UserAuthorBorderModel(
  color1: '',
  color2: '',
  id: '',
);

final userAuthorIcon = UserAuthorIconModel(
  id: 'id',
  url: 'url',
  xpAmount: 150,
);

final listQuizEntityMock = [quizEntityMokc];

final userAuthorBorderJsonMock = {
  "id": "demo-id-002",
  "color1": "#FFFF00",
  "color2": "#0000FF",
};

final userAuthorIconJsonMock = {
  "id": "demo-id-003",
  "url":
      "https://picsum.photos/seed/portfolio-3/800/600",
  "xp_amount": 150
};

final jsonQuizMock = {
  "_id": "demo-quiz-001",
  "privado": false,
  "partidas_executadas_qtd": 12,
  "comentarios_qtd": 4,
  "media_nota": 0,
  "media_acertos": 0.08333333333333333,
  "porcetagem_media_acertos": 8.333333333333332,
  "media_duracao": 2.0833333333333335,
  "avaliacao_nota": 5,
  "status_ativo": true,
  "finalizado": false,
  "desafio_id": "demo-quiz-001",
  "titulo": "Demo quiz 1",
  "descricao": "Synthetic quiz description 1",
  "usuario_autor": "demo-id-001",
  "usuario_autor_nome": "Demo Author 1",
  "usuario_autor_apelido": "Demo Author 2",
  "imagem_capa":
      "https://picsum.photos/seed/portfolio-1/800/600",
  "link_video": "",
  "numero_nic": "",
  "data_criacao": "2020-01-01T00:00:00.000Z",
  "__v": 0,
  "pode_ser_excluido": false,
  "usuario_autor_imagem_perfil":
      "https://picsum.photos/seed/portfolio-2/800/600",
  "usuario_autor_borda": {
    "id": "demo-id-002",
    "color1": "#FFFF00",
    "color2": "#0000FF"
  },
  "usuario_autor_icone": {
    "id": "demo-id-003",
    "url":
        "https://picsum.photos/seed/portfolio-3/800/600",
    "xp_amount": 150
  }
};

final listJsonQuizMock = [
  {
    "_id": "demo-quiz-001",
    "privado": false,
    "partidas_executadas_qtd": 12,
    "comentarios_qtd": 4,
    "media_nota": 0,
    "media_acertos": 0.08333333333333333,
    "porcetagem_media_acertos": 8.333333333333332,
    "media_duracao": 2.0833333333333335,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-001",
    "titulo": "Demo quiz 1",
    "descricao": "Synthetic quiz description 1",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-1/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-002",
    "privado": false,
    "partidas_executadas_qtd": 15,
    "comentarios_qtd": 1,
    "media_nota": 0,
    "media_acertos": 3.4,
    "porcetagem_media_acertos": 56.666666666666664,
    "media_duracao": 80.53333333333333,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-002",
    "titulo": "Demo quiz 2",
    "descricao":
        "Synthetic quiz description 2",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-4/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-003",
    "privado": false,
    "partidas_executadas_qtd": 15,
    "comentarios_qtd": 2,
    "media_nota": 0,
    "media_acertos": 1.6,
    "porcetagem_media_acertos": 32,
    "media_duracao": 48.333333333333336,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-003",
    "titulo": "Demo quiz 3",
    "descricao":
        "Synthetic quiz description 3",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-7/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-004",
    "privado": false,
    "partidas_executadas_qtd": 29,
    "comentarios_qtd": 1,
    "media_nota": 0,
    "media_acertos": 1.5172413793103448,
    "porcetagem_media_acertos": 37.93103448275862,
    "media_duracao": 54.41379310344828,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-004",
    "titulo": "Demo quiz 4",
    "descricao": "Synthetic quiz description 4",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-10/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-005",
    "privado": false,
    "partidas_executadas_qtd": 23,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.9130434782608695,
    "porcetagem_media_acertos": 91.30434782608695,
    "media_duracao": 3.739130434782609,
    "avaliacao_nota": 3,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-005",
    "titulo": "Demo quiz 5",
    "descricao": "Synthetic quiz description 5",
    "usuario_autor": "demo-id-013",
    "usuario_autor_nome": "Demo Author 9",
    "usuario_autor_apelido": "Demo Author 10",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-13/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-14/800/600"
  },
  {
    "_id": "demo-quiz-006",
    "privado": false,
    "partidas_executadas_qtd": 31,
    "comentarios_qtd": 1,
    "media_nota": 0,
    "media_acertos": 2.032258064516129,
    "porcetagem_media_acertos": 33.87096774193548,
    "media_duracao": 58.48387096774194,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-006",
    "titulo": "Demo quiz 6",
    "descricao": "Synthetic quiz description 6",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-15/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-007",
    "privado": false,
    "partidas_executadas_qtd": 27,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.7777777777777778,
    "porcetagem_media_acertos": 77.77777777777779,
    "media_duracao": 5.185185185185185,
    "avaliacao_nota": 3,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-007",
    "titulo": "Demo quiz 7",
    "descricao":
        "Synthetic quiz description 7",
    "usuario_autor": "demo-id-017",
    "usuario_autor_nome": "Demo Author 13",
    "usuario_autor_apelido": "Demo Author 14",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-18/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil": null
  },
  {
    "_id": "demo-quiz-008",
    "privado": false,
    "partidas_executadas_qtd": 16,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 1.9375,
    "porcetagem_media_acertos": 38.75,
    "media_duracao": 30.625,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-008",
    "titulo": "Demo quiz 8",
    "descricao": "Synthetic quiz description 8",
    "usuario_autor": "demo-id-018",
    "usuario_autor_nome": "Demo Author 15",
    "usuario_autor_apelido": "Demo Author 16",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-19/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-20/800/600"
  },
  {
    "_id": "demo-quiz-009",
    "privado": false,
    "partidas_executadas_qtd": 31,
    "comentarios_qtd": 1,
    "media_nota": 0,
    "media_acertos": 5.161290322580645,
    "porcetagem_media_acertos": 73.73271889400922,
    "media_duracao": 53.54838709677419,
    "avaliacao_nota": 4.8,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-009",
    "titulo": "Demo quiz 9",
    "descricao": "Synthetic quiz description 9",
    "usuario_autor": "demo-id-019",
    "usuario_autor_nome": "Demo Author 17",
    "usuario_autor_apelido": "Demo Author 18",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-21/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-22/800/600"
  },
  {
    "_id": "demo-quiz-010",
    "privado": false,
    "partidas_executadas_qtd": 27,
    "comentarios_qtd": 4,
    "media_nota": 0,
    "media_acertos": 2.259259259259259,
    "porcetagem_media_acertos": 56.481481481481474,
    "media_duracao": 32.592592592592595,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-010",
    "titulo": "Demo quiz 10",
    "descricao":
        "Synthetic quiz description 10",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-23/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-011",
    "privado": false,
    "partidas_executadas_qtd": 26,
    "comentarios_qtd": 2,
    "media_nota": 0,
    "media_acertos": 0.9230769230769231,
    "porcetagem_media_acertos": 30.76923076923077,
    "media_duracao": 20.96153846153846,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-011",
    "titulo": "Demo quiz 11",
    "descricao": "Synthetic quiz description 11",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-26/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-012",
    "privado": false,
    "partidas_executadas_qtd": 24,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.875,
    "porcetagem_media_acertos": 43.75,
    "media_duracao": 10.375000000000002,
    "avaliacao_nota": 4.5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-012",
    "titulo": "Demo quiz 12",
    "descricao":
        "Synthetic quiz description 12",
    "usuario_autor": "demo-id-026",
    "usuario_autor_nome": "Demo Author 23",
    "usuario_autor_apelido": "Demo Author 24",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-29/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil": null
  },
  {
    "_id": "demo-quiz-013",
    "privado": false,
    "partidas_executadas_qtd": 9,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 1.7777777777777777,
    "porcetagem_media_acertos": 88.88888888888889,
    "media_duracao": 8,
    "avaliacao_nota": 0,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-013",
    "titulo": "Demo quiz 13",
    "descricao": "Synthetic quiz description 13",
    "usuario_autor": "demo-id-027",
    "usuario_autor_nome": "Demo Author 25",
    "usuario_autor_apelido": "Demo Author 26",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-30/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-31/800/600"
  },
  {
    "_id": "demo-quiz-014",
    "privado": false,
    "partidas_executadas_qtd": 8,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 1.625,
    "porcetagem_media_acertos": 81.25,
    "media_duracao": 8.625,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-014",
    "titulo": "Demo quiz 14",
    "descricao": "Demo quiz 14",
    "usuario_autor": "demo-id-027",
    "usuario_autor_nome": "Demo Author 25",
    "usuario_autor_apelido": "Demo Author 26",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-32/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-31/800/600"
  },
  {
    "_id": "demo-quiz-015",
    "privado": false,
    "partidas_executadas_qtd": 7,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 1.5714285714285714,
    "porcetagem_media_acertos": 52.38095238095239,
    "media_duracao": 2.5714285714285716,
    "avaliacao_nota": 0,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-015",
    "titulo": "Demo quiz 15",
    "descricao": "Synthetic quiz description 14",
    "usuario_autor": "demo-id-027",
    "usuario_autor_nome": "Demo Author 25",
    "usuario_autor_apelido": "Demo Author 26",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-34/800/600",
    "link_video": "https://picsum.photos/seed/portfolio-35/800/600",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-31/800/600"
  },
  {
    "_id": "demo-quiz-016",
    "privado": false,
    "partidas_executadas_qtd": 8,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.625,
    "porcetagem_media_acertos": 62.5,
    "media_duracao": 3.875,
    "avaliacao_nota": 0,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-016",
    "titulo": "Demo quiz 16",
    "descricao": "Synthetic quiz description 15",
    "usuario_autor": "demo-id-027",
    "usuario_autor_nome": "Demo Author 25",
    "usuario_autor_apelido": "Demo Author 26",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-37/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-31/800/600"
  },
  {
    "_id": "demo-quiz-017",
    "privado": false,
    "partidas_executadas_qtd": 9,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.8888888888888888,
    "porcetagem_media_acertos": 88.88888888888889,
    "media_duracao": 4.333333333333333,
    "avaliacao_nota": 3,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-017",
    "titulo": "Demo quiz 5",
    "descricao": "Synthetic quiz description 16",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-39/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-018",
    "privado": false,
    "partidas_executadas_qtd": 7,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 1,
    "porcetagem_media_acertos": 100,
    "media_duracao": 1.7142857142857142,
    "avaliacao_nota": 3,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-018",
    "titulo": "Demo quiz 1",
    "descricao": "Synthetic quiz description 17",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-42/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-019",
    "privado": false,
    "partidas_executadas_qtd": 9,
    "comentarios_qtd": 0,
    "media_nota": 0,
    "media_acertos": 0.7777777777777778,
    "porcetagem_media_acertos": 77.77777777777779,
    "media_duracao": 10,
    "avaliacao_nota": 0,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-019",
    "titulo": "Demo quiz 17",
    "descricao": "Synthetic quiz description 18",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-45/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  },
  {
    "_id": "demo-quiz-020",
    "privado": false,
    "partidas_executadas_qtd": 14,
    "comentarios_qtd": 3,
    "media_nota": 0,
    "media_acertos": 1.0714285714285714,
    "porcetagem_media_acertos": 35.714285714285715,
    "media_duracao": 26.071428571428573,
    "avaliacao_nota": 5,
    "status_ativo": true,
    "finalizado": false,
    "desafio_id": "demo-quiz-020",
    "titulo": "Demo quiz 18",
    "descricao": "Synthetic quiz description 19",
    "usuario_autor": "demo-id-001",
    "usuario_autor_nome": "Demo Author 1",
    "usuario_autor_apelido": "Demo Author 2",
    "imagem_capa":
        "https://picsum.photos/seed/portfolio-48/800/600",
    "link_video": "",
    "numero_nic": "",
    "data_criacao": "2020-01-01T00:00:00.000Z",
    "__v": 0,
    "pode_ser_excluido": false,
    "usuario_autor_imagem_perfil":
        "https://picsum.photos/seed/portfolio-2/800/600",
    "usuario_autor_borda": {
      "id": "demo-id-002",
      "color1": "#FFFF00",
      "color2": "#0000FF"
    },
    "usuario_autor_icone": {
      "id": "demo-id-003",
      "url":
          "https://picsum.photos/seed/portfolio-3/800/600",
      "xp_amount": 150
    }
  }
];
