# Flutter Quiz App

A simple Flutter application that allows users to take a multiple-choice questionnaire and receive their score upon completion.

## Features

- User registration with name input
- Multiple-choice questionnaire interface
- Real-time score calculation
- Results summary screen
- Clean and intuitive UI

## Getting Started

### Prerequisites

- Flutter SDK (version 3.0.0 or higher)
- Dart SDK (version 2.17.0 or higher)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/flutter-quiz-app.git
```

2. Navigate to the project directory:
```bash
cd flutter-quiz-app
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Demo Video

https://github.com/yourusername/flutter-quiz-app/assets/demo.mp4

The demo video shows:
1. Opening the app and entering a user name
2. Navigating through the questionnaire
3. Selecting answers for multiple-choice questions
4. Viewing the final score and results summary
5. Restarting the quiz

## Project Structure

```
lib/
├── main.dart
├── models/
│   ├── question.dart
│   └── quiz_result.dart
├── screens/
│   ├── home_screen.dart
│   ├── quiz_screen.dart
│   └── result_screen.dart
└── widgets/
    ├── answer_button.dart
    └── question_card.dart
```

## Usage

1. Launch the app
2. Enter your name on the welcome screen
3. Start the quiz by tapping "Begin Quiz"
4. Answer each multiple-choice question by selecting one option
5. Submit your answers to view your final score
6. Choose to retry the quiz or exit the app

## Customization

### Adding New Questions

To add new questions, modify the `assets/questions.json` file:

```json
{
  "questions": [
    {
      "text": "Your question here?",
      "options": [
        "Option 1",
        "Option 2",
        "Option 3",
        "Option 4"
      ],
      "correctAnswer": 0
    }
  ]
}
```

### Modifying Styles

Theme colors and styles can be adjusted in `lib/theme/app_theme.dart`.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Contributors who have participated in this project