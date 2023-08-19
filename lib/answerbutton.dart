import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answertext,
    required this.onTap,
  });

  final String answertext;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            backgroundColor: Color.fromARGB(255, 114, 52, 168),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onTap,
        child: Text(answertext,style:  GoogleFonts.lustria(color: Colors.white),));
  }
}
