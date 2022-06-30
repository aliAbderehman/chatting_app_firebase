import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late String? label;
  Function pressed;

  Color buttonColor;

  CustomButton(
      {Key? key, this.label, required this.buttonColor, required this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 30.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () => pressed(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label!,
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  late String labelText;
  TextInputType? keyboard;

  CustomTextField({Key? key, required this.labelText, this.keyboard})
      : super(key: key);

  bool setObsecure() {
    if (keyboard == TextInputType.emailAddress) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        //Do something with the user input.
      },
      style: const TextStyle(color: Colors.black),
      keyboardType: keyboard,
      obscureText: setObsecure(),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: labelText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}

class FlashLogo extends StatelessWidget {
  double? height;
  FlashLogo({super.key, this.height});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset('images/logo.png'),
    );
  }
}
