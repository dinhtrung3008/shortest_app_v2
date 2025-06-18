import 'package:flutter/material.dart';
import 'package:shortest_app/presentation/pages/sign_in/sign_in_page.dart';

import '../../core/utils/navigator/navigator_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                NavigationService().navigateAndRemoveAll(SignInPage());
              },
              child: const Text('Go back Sign-In', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
