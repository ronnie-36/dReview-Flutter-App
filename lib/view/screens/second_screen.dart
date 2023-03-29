import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/first_screen.dart';
import 'package:flutter_application_1/view/screens/terms_and_conditions_screen.dart';
import 'package:flutter_application_1/view/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms and Conditions'),),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child:
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('1) The purpose of this project is solely for academic grade and research purposes. \n'
                        '2) The information provided within this application is not guaranteed to be completely secure. Use of this application is at the user\'s own risk. \n'
                        '3) By accepting these terms and conditions, you acknowledge your interest in participating in a trial of this application.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => TermsAndCondtionsScreen()));
              //   },
              //   child: Text('Terms and conditions'),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      name: 'Accept',
                      minWidth: MediaQuery.of(context).size.width / 3,
                      onPressed: () {
                        openWebsite(context);
                      }),
                  CustomButton(
                      name: 'Reject',
                      minWidth: MediaQuery.of(context).size.width / 3,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => FirstScreen()),
                                (route) => false);
                      })
                ],
              )
            ],
          )),
    );
  }

  void openWebsite(BuildContext context) async {
    String url = "https://review.rahul.kr";
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url, mode: LaunchMode.externalApplication);
    } else {
      var snackBar = SnackBar(content: Text('Cannot open website'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
