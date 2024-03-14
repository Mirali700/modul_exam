import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_exam/screens/home_screen.dart';

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Joint our dailly Task!",
                    style: TextStyle(fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold,
                    ),
                    
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
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 7, 164, 255),
                    ),
                    
                    child: TextButton(onPressed: (){
                      Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
                    }, child: const Text("Join SocialTask",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
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