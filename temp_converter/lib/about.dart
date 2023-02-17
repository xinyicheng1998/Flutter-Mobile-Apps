import 'package:flutter/material.dart';

/// The page about the author
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // add scaffold
    // add appBar
    // add body, with Center and Column widgets
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 37.0, right: 37.0),
              child: Text(
                "This Temp Converter app lets you move between temperatures in degrees Fahrenheit and degrees Celsius. Simply enter a temperature in the box and the corresponding temperature will automatically appear on the screen. You can toggle between the two sets of units with the switch located below the input box.\n",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(37.0),
              child: Text(
                "This amazing app was created for you by Xinyi Cheng.\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                key: const Key("back button"),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
