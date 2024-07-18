import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Proyekku",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.deepOrange),
        useMaterial3: true),
      home: Dashboard(),
    );
  }
}
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("text"),
          Text("text"),
          ElevatedButton(onPressed:(){
            print("helo button");
          }, child: Text("Tekan Saya"))
        ],
      ),
    );
  }
}