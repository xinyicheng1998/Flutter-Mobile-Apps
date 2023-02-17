import 'package:flutter/material.dart';
import 'converter.dart';
import 'about.dart';

/// the main page, home page
void main() {
  runApp(const MyApp());
}

/// the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Temperature Converter Home Page'),
    );
  }
}

/// the home page
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Converter _converter = Converter();
  String _textTemp = "Enter a temp";
  bool _isSwitched = true;

  /// Updates the current text of temperature to the new temperature content
  void _updateTemp() {
    setState(() {
      _textTemp = _converter.convertString();
    });
  }

  /// Update state of _isSwitched and related fields
  void _updateSwitch(bool value) {
    setState(() {
      _isSwitched = value;
      _converter.toggle();
      _textTemp = _converter.convertString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _textTemp,
              style: const TextStyle(fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              width: 400,
              child: TextField(
                style: const TextStyle(fontSize: 30),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Temp',
                ),
                onChanged: (text) {
                  // try to set the model temp
                  _converter.setTemp((double.tryParse(text) ?? -500.0));
                  // update the interface
                  _updateTemp();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '°C',
                  style: TextStyle(fontSize: 25),
                  semanticsLabel: 'celsicus mode',
                ),
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    // time to update the interface again
                    _updateSwitch(value);
                  },
                ),
                const Text(
                  '°F',
                  style: TextStyle(fontSize: 25),
                  semanticsLabel: 'farenheight mode',
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: OutlinedButton.icon(
                  label: const Text('About Temp Converter'),
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
