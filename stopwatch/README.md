# Flutter Stopwatch App

A simple stopwatch app built using Flutter.

## Features

The app displays the elapsed time in the format "mm:ss.SSS".
The Stop button can be used to pause and resume the stopwatch.
The Reset button can be used to reset the stopwatch.

## How to Use

1. Press the Stop button to pause the stopwatch.
2. Press the Stop button again to resume the stopwatch.
3. Press the Reset button to reset the stopwatch.

## Technical Details

The app uses a Stopwatch object from the Dart core library to keep track of elapsed time. The calculateElapsed function is used to convert the elapsed milliseconds to a string in the format "mm:ss.SSS". The app uses a Timer object to update the elapsed time display every 69 milliseconds.

The MyHomePage widget creates the homepage for the app, and the \_MyHomePageState widget is the stateful widget that does the hard work of building out the details of MyHomePage.

The app uses Text widgets to display the elapsed time, OutlinedButton widgets for the Stop and Reset buttons, and a Column widget to align the widgets vertically.
