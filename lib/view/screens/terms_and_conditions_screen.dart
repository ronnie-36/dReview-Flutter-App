import 'package:flutter/material.dart';

class TermsAndCondtionsScreen extends StatelessWidget {
  const TermsAndCondtionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )),
              Text(
                '1) The purpose of this project is solely for academic grade and research purposes. \n'
                    '2) The information provided within this application is not guaranteed to be completely secure. Use of this application is at the user\'s own risk. \n'
                    '3) By accepting these terms and conditions, you acknowledge your interest in participating in a trial of this application.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
