import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_flutter/screens/quizz/question_controller.dart';

// Assurez-vous de définir `kSecondaryColor` ou remplacez-le par une couleur spécifique
const kSecondaryColor = Colors.green;

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.find<QuestionController>();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: TextStyle(
                  fontSize: 32, // Taille du texte
                  fontWeight: FontWeight.bold, // Gras
                  color: kSecondaryColor, // Couleur du texte
                ),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: TextStyle(
                  fontSize: 24, // Taille du texte
                  color: kSecondaryColor, // Couleur du texte
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        ],
      ),
    );
  }
}
