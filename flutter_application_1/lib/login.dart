import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'dashboard.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi",
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.developer_board,
                  size: 24,
                ),
                Text("Leafboard"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Work Without Limit",
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    //  obscureText: true,
                    initialValue: 'admin@gmail.com',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      prefix: Icon(
                        Icons.email,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your email address',
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    initialValue: 'admin@gmail.com',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: ' Password',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      prefix: Icon(
                        Icons.key,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your password address',
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        minimumSize: Size(double.infinity, 50)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text("Sign In"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "or",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50)),
                    onPressed: () {},
                    child: Text("Login with Google"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50)),
                    onPressed: () {},
                    child: Text("Login with Facebook"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
