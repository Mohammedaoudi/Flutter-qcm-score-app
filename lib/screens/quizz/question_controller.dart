import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:tp_flutter/screens/quizz/Questions.dart'; // Assurez-vous que ce chemin est correct
import 'package:tp_flutter/screens/score.dart';

class QuestionController extends GetxController {
  // PageController to control the pages in the quiz
  late PageController _pageController;
  PageController get pageController => this._pageController;

  // List of questions
  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: List<String>.from(question['options']),
            answer: question['answer_index']),
      )
      .toList();
  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int? _correctAns;
  int? get correctAns => this._correctAns;

  int? _selectedAns;
  int? get selectedAns => this._selectedAns;

  // Observing the question number
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  // Number of correct answers
  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    _pageController.dispose();
    super.onClose();
  }

  // Method to check the answer
  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  // Method to move to the next question
  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _questionNumber.value++;
    } else {
      Get.to(() => ScoreScreen());
    }
  }

  // Method to update the question number
  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
