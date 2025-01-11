class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List sample_data = [
  {
    "id": 1,
    "question": "Flutter est de",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index":1 ,
  },
  {
    "id": 2,
    "question": "React Native est de",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "niveau de ce tp",
    "options": ['facile', 'moyen', 'difficile', 'tres difficile'],
    "answer_index": 1,
  }
];
