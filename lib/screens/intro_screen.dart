import 'package:flutter/material.dart';
import 'package:grocery_shopping/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // logo

          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 40.0, top: 40.0),
            child: Image.asset('assets/images/avocado.png'),
          ),

          // text

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("we deliver groceries at your at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 35.0, fontWeight: FontWeight.bold)),
          ),

          // Fresh items every day

          Text('Fresh items everyday',
              style: GoogleFonts.notoSerif(color: Colors.grey[600])),

          const Spacer(),

          // get started button

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen())),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
