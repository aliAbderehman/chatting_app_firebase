import 'package:flutter/material.dart';
import '../component/component.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: FlashLogo(height: 200.0),
            ),
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
                tag: 'loginButton',
                child: CustomButton(
                  buttonColor: Colors.lightBlueAccent,
                  label: 'Login',
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
