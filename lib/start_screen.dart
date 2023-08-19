import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
            opacity: 0.3,
            child: Image.asset("assets/icons8-quizlet-100.png",
                color: Colors.white, width: 150, height: 100)),
        SizedBox(height: 40),
         Text(
       "Learn flutter in quiz.....",
          style:GoogleFonts.taiHeritagePro(color: Colors.white),
        ),
        SizedBox(height: 40),
        OutlinedButton.icon(
            icon: Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            label: Text(
              "Start Quiz",
              style: GoogleFonts.lustria(color: Colors.white),
            ))
      ],
    ));
  }
}
