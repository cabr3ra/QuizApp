# Quiz App

This is a simple quiz app built with Flutter. It allows users to take a quiz consisting of multiple-choice questions and displays their score at the end.


## 🚀 Features

- **Navigation:** Easily move between screens using buttons.
- **State Management:** State is managed using the `provider` package.
- **Multiple-Choice Questions:** Each question has multiple answer options.
- **Results Display:** Shows the user's score at the end of the quiz.


## 📂 Project Structure

quiz_app/
|- lib/
    |- models/
        |- question.dart   # Contains the Question class to represent quiz questions.
    |- providers/
        |- quiz_provider.dart   # Manages the state of the quiz.
    |- screens/
        |- home_screen.dart    # The main screen where the quiz starts.
        |- quiz_screen.dart    # Displays the quiz questions and handles user answers.
        |- result_screen.dart  # Shows the user's score after completing the quiz.
    |- widgets/
        |- question_widget.dart   # Widget to display a question and its answer options.
        |- answer_widget.dart     # Widget to display an answer option.
|- pubspec.yaml   # Dependency configuration file.


## 📦 Dependencies

- **provider:** State management package for Flutter.


## 🛠️ How to Run

1. Clone this repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run` to start the app.
