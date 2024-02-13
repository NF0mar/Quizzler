import 'Question.dart';

int _questionno = 0;

class QuizBrain {
  final List<Question> _questions = [
    Question(q: 'Siyaad Bare wuxuu dhintay 1991', a: false),
    Question(
        q: 'Xasan sheikh waa madaxweynaha kaliya ee 2 mar xilka qabtay',
        a: true),
    Question(
        q: 'Aadan cade waa madaxweynihii ugu horeyay ee Soomaaliya', a: true),
    Question(q: 'Meydka Xalaasha ah waa eyga iyo doofaarka', a: false),
    Question(
        q: 'ninkii dakhray nabiga dagaalkii uxud wuxuu ahaa Qimah', a: true),
    Question(
        q: 'Malaga buunka qiyame afuufaya magaciis waa Israafiil', a: true),
    Question(
        q: 'Geedka kabaxa jahanama dhaxdeed waxaa la yirahdaa Zaquum', a: true),
    Question(
        q: 'Masjidka salaada lagu tukado ey udhiganto ajar cumro waa xaramka',
        a: false)
  ];

  void nextQuestion() {
    if (_questionno < _questions.length - 1) {
      _questionno++;
    }
  }

  String getQuestionText() {
    return _questions[_questionno].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionno].questionAnswer;
  }
}
