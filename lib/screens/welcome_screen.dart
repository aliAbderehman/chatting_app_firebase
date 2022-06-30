import 'package:chatting_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'registration_screen.dart';
// import 'package:flutter/animation.dart';
import '../component/component.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  const WelcomeScreen({super.key});
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation curveAnim;
  late TextStyleTween textAnimation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    curveAnim = CurvedAnimation(parent: controller, curve: Curves.bounceOut);

    controller.forward();
    curveAnim.addListener(() {
      setState(() {});
    });

    controller.addListener((() {
      setState(() {});
    }));

    textAnimation = TextStyleTween(
      begin: TextStyle(
        fontSize: curveAnim.value * 100,
        fontWeight: FontWeight.w900,
      ),
      end: const TextStyle(fontSize: 20),
    );
  }

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
            Row(
              children: <Widget>[
                Hero(
                    tag: 'logo',
                    child: FlashLogo(height: curveAnim.value * 80)),
                Text(
                  'ፍላሽ ቻት',
                  // style: textAnimation.evaluate(controller),
                  style: TextStyle(
                      fontSize: curveAnim.value * 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Seat'),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Hero(
              tag: 'loginButton',
              child: CustomButton(
                pressed: () {
                  return Navigator.pushNamed(context, LoginScreen.id);
                },
                label: 'Log In',
                buttonColor: Colors.lightBlueAccent,
              ),
            ),
            Hero(
              tag: 'registerButton',
              child: CustomButton(
                pressed: () {
                  return Navigator.pushNamed(context, RegistrationScreen.id);
                },
                label: 'Register',
                buttonColor: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
