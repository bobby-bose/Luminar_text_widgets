import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Simple Text',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Second Text with Headline 4',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with textscale factor and color",
                textScaleFactor: 2.0,
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with fontweight color red",
                style: TextStyle(
                  color: Color.fromARGB(255, 243, 65, 33),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with Font Size changed",
                textAlign: TextAlign.center,
                textScaleFactor: 2.0,
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with Letter Spacing and Word Spacing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  wordSpacing: 50.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with Shadow",
                style: TextStyle(
                  fontSize: 40.0,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 10, 191, 37),
                      offset: Offset(7.0, 7.0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with Decorations",
                style: TextStyle(
                  fontSize: 40.0,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Color.fromARGB(255, 243, 65, 33),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text with Background Color",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  backgroundColor: Color.fromARGB(255, 232, 117, 97),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
