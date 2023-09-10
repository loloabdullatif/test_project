import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'Hello';
  TextEditingController userNameEditingController = TextEditingController();
  Color appBarBGColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBGColor,
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userNameEditingController,
              decoration: InputDecoration(
                hintText: 'User Name',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appBarBGColor = Colors.blue;
                title = userNameEditingController.text;
                setState(() {});
              },
              child: const Text(
                'Log In',
              ),
            )
          ],
        ),
      ),
    );
  }
}
