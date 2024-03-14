import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_exam/screens/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image.asset(
                fit: BoxFit.fill,
                height: 932,
                "assets/images/background1.jpg"),
          ],
        ),
        Align(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:200),
                child: Image.asset(height: 250, "assets/images/logo_500px.jpg"),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientText(
    'Join our dailly Tasks!',
    style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
    ),
    colors: const [
        Color.fromARGB(255, 255, 181, 45),
        Color.fromARGB(255, 125, 209, 254),
        Color.fromARGB(255, 39, 205, 255),
    ],
),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Collaborate to make a better world.",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 152, 211, 255),
                        Color.fromARGB(255, 13, 186, 255),
                      ],),
                    ),
                    
                    child: TextButton(onPressed: (){
                      Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
                    }, child: const Text("Join SocialTask",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                    ),),
                  ),
                    
                    
                  
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}