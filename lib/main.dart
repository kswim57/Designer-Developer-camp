import 'package:flutter/material.dart';
import 'theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Row(
            children:[
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset(
                        "assets/images/stot_logo.png",
                    ),
                    Container(
                      height: 100,
                      color: Colors.red,
                    ),
                    TextButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.person),
                        label: Text("커뮤니티")
                    ),
                    Container(
                      height: 30,
                      color: Colors.red,
                    ),
                    TextButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.wallet),
                        label: Text("지갑")
                    ),
                    Container(
                      height: 30,
                      color: Colors.red,
                    ),
                    TextButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.person_pin_circle_outlined),
                        label: Text("프로필")
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ],
          )
      )
    );
  }
}
