import 'package:flutter/material.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('M O B I L E'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopupMenuButton(
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      child: Text('M A N A G E   A C C O U N T')),
                  const PopupMenuItem(child: Text('H I S T O R Y')),
                  const PopupMenuItem(child: Text('T H E M E')),
                  const PopupMenuItem(child: Text('S E T T I N G S')),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.brown[300],
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedFontSize: 10.5,
          unselectedFontSize: 10.5,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_rounded),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_rounded),
                label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_rounded), label: 'Library')
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(color: Colors.deepPurple[900]),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: false,
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      if (index < 1) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            color: Colors.grey[800],
                            height: 80,
                          ),
                        );
                      } else {
                        return Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 0),
                            child: Container(
                                color: const Color.fromARGB(255, 32, 0, 174),
                                height: 40,
                                child: Center(
                                    child: FittedBox(
                                        child: Text(
                                            'C O M M E N T ${index + 1}')))));
                      }
                    }),
              )
            ],
          ),
        ));
  }
}
