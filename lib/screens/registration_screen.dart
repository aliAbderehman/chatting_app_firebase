import 'package:flutter/material.dart';
import '../component/component.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  const RegistrationScreen({super.key});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
                tag: 'logo',
                child: FlashLogo(
                  height: 200.0,
                )),
            const SizedBox(
              height: 48.0,
            ),
            CustomTextField(
              labelText: 'Enter your Email',
              keyboard: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CustomTextField(
              labelText: 'Enter your password',
              keyboard: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 24.0,
            ),
            Hero(
                tag: 'registerButton',
                child: CustomButton(
                  buttonColor: Colors.blueAccent,
                  label: 'Register',
                  pressed: () {
                    //do something
                  },
                )),
          ],
        ),
      ),
    );
  }
}
