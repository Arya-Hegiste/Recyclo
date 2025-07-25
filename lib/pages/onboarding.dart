import 'package:flutter/material.dart';
import 'package:myapp/services/widget_support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Image.asset("images/onboard.png"),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Recycle your waste products!",
                style: AppWidget.headlinetextstyle(30.0),
              ),
            ),
               SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Easily collect household waste & generate less waste",
                style: AppWidget.normaltextstyle(20.0),
              ),
            ),
            SizedBox(height: 20.0,),
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text("Get started", style: AppWidget.whitetextstyle(24.0),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
