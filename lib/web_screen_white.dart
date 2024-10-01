import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pizaapp/coer/images_coer/colors.dart';

class WebScreenWhite extends StatelessWidget {
  const WebScreenWhite({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return const Web_Web();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
        return const SafeArea(child: Web_Tab());
      } else {
        return const SafeArea(child: Web_Mob());
      }
    });
  }
}

class Web_Web extends StatelessWidget {
  const Web_Web({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            SizedBox(
              height: 80,
            ),
            contantmsg(),
          ],
        ),
      ),
    );
  }
}

class Web_Tab extends StatelessWidget {
  const Web_Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [appbar(), contantmsg()],
        ),
      ),
    );
  }
}

class Web_Mob extends StatelessWidget {
  const Web_Mob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.60,
        backgroundColor: Pallete.whiteColor,
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.60,
                color: Colors.tealAccent,
                child: const Column(
                  children: [
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'SKILL UP NOW',
                        style: TextStyle(fontSize: 26),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.play_arrow,
                            color: Pallete.whiteColor,
                            size: 28,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                const Icon(
                  Icons.play_lesson_outlined,
                  color: Colors.black,
                  size: 28,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Eposides",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                ),
                const Icon(
                  Icons.message_rounded,
                  color: Colors.black,
                  size: 28,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "About",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [appbar(), contantmsg()],
        ),
      ),
    );
  }
}

// -------------------------------appbar--------------------------------------//
class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HUMMING',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "BIRD",
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, height: 0.7),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Eposides",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'About',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HUMMING',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "BIRD",
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, height: 0.7),
                    )
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

//----------------------------contant-------------------------------------------//
class contantmsg extends StatelessWidget {
  const contantmsg({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            children: [
              const Expanded(
                  child: SizedBox(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'FLUTTER WEB .',
                      minFontSize: 60,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                      ),
                    ),
                    Text(
                      "THE BASIC",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                        fontSize: 60,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    AutoSizeText(
                      "Flutter is an open-source UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and features a rich set of pre-designed widgets for creating responsive and visually appealing UIs. With Flutter's hot-reload feature, developers can see changes in real-time, making the development process faster and more efficient.",
                      maxLines: 6,
                      textAlign: TextAlign.left,
                      presetFontSizes: [40, 20, 14],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 300, maxHeight: 50),
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Color.fromARGB(255, 99, 244, 210))
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 100, 255, 200),
                              Color.fromARGB(255, 100, 255, 218),
                              Colors.teal
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Join Course",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              'FLUTTER WEB .',
              minFontSize: 50,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
              ),
            ),
            const Text(
              "THE BASIC",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: Text(
                "Flutter is an open-source UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and features a rich set of pre-designed widgets for creating responsive and visually appealing UIs. With Flutter's hot-reload feature, developers can see changes in real-time, making the development process faster and more efficient.",
                maxLines: 6,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 300, maxHeight: 50),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Color.fromARGB(255, 99, 244, 210))
                ],
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 100, 255, 200),
                    Color.fromARGB(255, 100, 255, 218),
                    Colors.teal
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Center(
                child: Text(
                  "Join Course",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            const AutoSizeText(
              'FLUTTER WEB .',
              minFontSize: 50,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
              ),
            ),
            const Text(
              "THE BASIC",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Flutter is an open-source UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and features a rich set of pre-designed widgets for creating responsive and visually appealing UIs. With Flutter's hot-reload feature, developers can see changes in real-time, making the development process faster and more efficient.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.60,
              height: 50,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Color.fromARGB(255, 99, 244, 210))
                ],
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 100, 255, 200),
                    Color.fromARGB(255, 100, 255, 218),
                    Colors.teal
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Center(
                child: Text(
                  "Join Course",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        );
      }
    });
  }
}
//--------------------------------subprojec------------------------------------//