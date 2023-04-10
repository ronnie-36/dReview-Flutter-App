import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/second_screen.dart';
import 'package:flutter_application_1/view/widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'Digital Transformation of Anti-Corruption technologies towards next-gen digital governance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    name: 'Continue',
                    minWidth: MediaQuery.of(context).size.width / 2,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SecondScreen()));
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
