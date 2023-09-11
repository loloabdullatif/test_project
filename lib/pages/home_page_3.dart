import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application'),
        backgroundColor: Colors.pink[200],
      ),
      body: Container(
        child: Column(
          children: [
            Center(child: Text('hello')),
            SizedBox(
              width: 120,
              child: TextField(
                decoration: InputDecoration(hintText: 'UserName'),
              ),
            ),
            SizedBox(
              width: 120,
              child: TextField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[900],
              ),
              onPressed: () {},
              child: Text(
                'login ',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
