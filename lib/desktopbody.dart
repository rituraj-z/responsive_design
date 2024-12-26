import 'package:flutter/material.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  int _currentIndex = 0;
  void selectItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  bool show = false;
  void showOther() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        titleSpacing: 1,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: showOther,
        ),
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
                const PopupMenuItem(child: Text('M A N A G E   A C C O U N T')),
                const PopupMenuItem(child: Text('H I S T O R Y')),
                const PopupMenuItem(child: Text('T H E M E')),
                const PopupMenuItem(child: Text('S E T T I N G S')),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            show
                ? SizedBox(
                    width: 80,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                            color: Colors.grey[900],
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: FittedBox(
                                    child: IconButton(
                                        icon: Icon(
                                          _currentIndex == 0
                                              ? Icons.home
                                              : Icons.home_outlined,
                                          size: 18,
                                        ),
                                        color: _currentIndex == 0
                                            ? Colors.red[500]
                                            : Colors.brown[300],
                                        onPressed: () {
                                          selectItem(0);
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: FittedBox(
                                    child: IconButton(
                                        icon: Icon(
                                          _currentIndex == 1
                                              ? Icons.notifications
                                              : Icons.notifications_outlined,
                                          size: 18,
                                        ),
                                        color: _currentIndex == 1
                                            ? Colors.red[500]
                                            : Colors.brown[300],
                                        onPressed: () {
                                          selectItem(1);
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: FittedBox(
                                    child: IconButton(
                                        icon: Icon(
                                          _currentIndex == 2
                                              ? Icons.subscriptions
                                              : Icons.subscriptions_outlined,
                                          size: 18,
                                        ),
                                        color: _currentIndex == 2
                                            ? Colors.red[500]
                                            : Colors.brown[300],
                                        onPressed: () {
                                          selectItem(2);
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: FittedBox(
                                    child: IconButton(
                                        icon: Icon(
                                          _currentIndex == 3
                                              ? Icons.video_library
                                              : Icons.video_library_outlined,
                                          size: 18,
                                        ),
                                        color: _currentIndex == 3
                                            ? Colors.red[500]
                                            : Colors.brown[300],
                                        onPressed: () {
                                          selectItem(3);
                                        }),
                                  ),
                                ),
                              ],
                            ))),
                  )
                : SizedBox(
                    width: 120,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: const Color.fromARGB(255, 56, 36, 0),
                      ),
                    )),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Can also use SizedBox(width:?) instead of FLexible(flex:?),
                        Flexible(
                            flex: 2,
                            child: Column(
                              children: [
                                AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Container(
                                      color: Colors.blue[800],
                                    )),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 24,
                                  itemBuilder: (context, index) {
                                    if (index < 1) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                            color: Colors.grey[900],
                                            height: 80),
                                      );
                                    } else {
                                      return Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 0),
                                          child: Container(
                                              color: const Color.fromARGB(
                                                  255, 0, 4, 255),
                                              height: 80,
                                              child: Center(
                                                  child: Text(
                                                      'C O M M E N T $index'))));
                                    }
                                  },
                                ),
                              ],
                            )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                    color: const Color.fromARGB(255, 12, 0, 81),
                                    height: 180,
                                    child: Center(
                                      child: Text(
                                          'S U G G E S T I O N ${index + 1}'),
                                    )),
                              );
                            },
                          ),
                        ))
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
