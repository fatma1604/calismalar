import 'package:drawer_app/models/question_model.dart';

const questions = [
  QuestionModel("Aşağıdakilerden hangisi bir widget türüdür",
      ["Stateful", "Constructor", "Class", "Const", "Deneme"], "Class"),
  QuestionModel(
      "Flutter nedir?",
      [
        " Google tarafından geliştirilen bir oyun platformudur",
        " Mobil uygulama geliştirmek için açık kaynaklı bir UI toolkit ve SDK'dir.",
        "Yapay zeka tabanlı bir dil öğrenme platformudur.",
        "Grafik tasarım aracıdır."
      ],
      " Mobil uygulama geliştirmek için açık kaynaklı bir UI toolkit ve SDK'dir."),
  QuestionModel("Flutter hangi programlama dilini kullanır",
      ["Java", "C++", " Dart", "Python"], "Dart"),
  QuestionModel(
      " Flutter'ın avantajları nelerdir?",
      [
        "Yüksek performans, hızlı geliştirme, platformlar arası uyumluluk",
        " Sadece iOS için uyumluluk",
        "Sadece Android için uyumluluk",
        "Yavaş geliştirme, düşük performans"
      ],
      "Yüksek performans, hızlı geliştirme, platformlar arası uyumluluk"),
  QuestionModel(
      "Flutter'da " "Stateful Widget" " nedir?",
      [
        "Durumu değişmeyen widget türü",
        "Durumu değişebilen widget türü",
        "Yalnızca metin içeren widget",
        "Görsel tasarım aracı"
      ],
      "Durumu değişebilen widget türü")
];
