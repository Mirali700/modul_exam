import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_exam/screens/home_screen.dart';
import 'package:modul_exam/screens/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(onPressed:  (){
                      Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
                    }, icon: const Icon(Icons.home)),
              label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.rectangle,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: 'Main'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: 'Rankings'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed:  (){
                      Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
                    }, icon: const Icon(Icons.account_circle_sharp)),
              label: 'Profile'),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background2.jpg"),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset(height: 130, "assets/images/logo_500px.jpg"),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dailly Task",
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Text(
                      "Potrebbe  indicarmello  sullla  carta  indicarmello sulla corsle.🔥",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "---Instructions---",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Text(
                      "Sometimes to understand a word's meaning you need more than a definition; you need to see the word used in a sentence. At YourDictionary, we give you the tools. ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white70,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
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
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 233, 138, 21),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Start",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}