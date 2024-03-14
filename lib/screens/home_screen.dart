import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_exam/data/image_data.dart';
import 'package:modul_exam/screens/main_screen.dart';
import 'package:modul_exam/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 98, 94, 94),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed:  (){
                      Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
                    }, icon: const Icon(Icons.rectangle)),
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: photoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://picsum.photos/id/237/200/300"),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cavid Gaffar  ✅ ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Ganjali",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                     
                      Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Image.network(
                      photoList[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 0, bottom: 12),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_upward)),
                        const Text("0"),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_downward)),
                        const Text("0"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Row(
                      children: [
                        Text(" i like it Cafka 🔥"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
