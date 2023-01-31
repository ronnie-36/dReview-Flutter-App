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
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child:
              Padding(
              padding: EdgeInsets.all(15),
                child: Text('\nThe digitization of governance refers to the use of digital technologies the efficiency, effectiveness, and transparency of governmental processes. It involves the automation of administrative tasks, the use of online platforms for communication and information sharing, and the integration of digital systems across different government agencies. Digitization has the potential to transform the way governance is conducted by making it more transparent, efficient, and accessible. It can also improve the delivery of public services, reduce the burden of bureaucracy, and enhance the participation of citizens in the decision-making process. In short, the digitization of governance can help to create more responsive, accountable, and inclusive governments that are better able to serve the needs of their citizens.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsAndCondtionsScreen()));
            },
            child: Text('Terms and conditions'),
          ),
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
