# Title: Temperature converter

## Description

A flutter project to convert temperature between celsius and fahrenheit <br>
The application has an entrypoint in `bin/`, library code in `lib/`, and example unit test in `test/`.<br>
In lib:<br>
converter.dart: class Converter, the model<br>
main.dart: MyApp containing widget MyHomePage<br>
about.dart: widget AboutPage<br>
In test:<br>
widget_test.dart: tests for widgets<br>
test/converter_test.dart: tests for class Converter<br>

test coverage: 97%

## How to Install and Run the Project

1. Clone the project to your local machine.
2. Open the project directory in your terminal or command prompt.
3. Run the command flutter pub get to install the project dependencies.
4. Connect your device or start the emulator or simulator.
5. Run the command flutter run to start the app.

## How to Run Tests in the project

In terminal<br>

```
cd <Your path>/temp_converter
flutter test --coverage
genhtml -o coverage/html coverage/lcov.info
```

## How to Use the Project

1. Enter a temperature in the input box.
2. The corresponding temperature will automatically appear on the screen.
3. Toggle between the two sets of units with the switch located below the input box.
