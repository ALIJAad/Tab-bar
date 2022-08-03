import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200.0,
          elevation: 0.0,
          title: const Text("Futter class"),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.network("https://i.gifer.com/PYh.gif"),
                  ),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.network("https://i.gifer.com/nUq.gif"),
                  ),
                  Container(
                      height: 200.0,
                      width: 200.0,
                      child: Image.network("https://i.gifer.com/nUq.gif")),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
