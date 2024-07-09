import 'package:flutter/material.dart';

import '../widgets/date_card.dart';

class UiAssignment extends StatelessWidget {
  const UiAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
          titleLarge: TextStyle(
            color: Color.fromARGB(255, 3, 240, 253),
          ),
          bodyLarge: TextStyle(
            color: Color.fromARGB(248, 85, 67, 67),
          ),
        ),
      ),
      home: const UiDisplay(),
    );
  }
}

class UiDisplay extends StatelessWidget {
  const UiDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: Text(
          "UI Assigment",
          style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge!.color!,
              fontSize: Theme.of(context).textTheme.titleLarge!.fontSize),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/도하.jpg'),
                ),
                Icon(
                  Icons.add,
                  color: Color(0xFFF2e2e3),
                  size: 45,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "TUESDAY",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text("  "),
                Text(
                  "09",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "TODAY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.circle,
                    color: Colors.pink[400],
                    size: 12,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "10",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    "11",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    "12",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    "13",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    "14",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                  const SizedBox(width: 22),
                  Text(
                    "15",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.55),
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize! *
                                2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DateCardSpacing(
                      color: Color(0xffffff00),
                      startTime: "11:30",
                      endTime: "12:20",
                      title: "Design Meeting",
                      participants: ["ALEX", "HELENA", "NANA"],
                    ),
                    DateCardSpacing(
                      color: Color.fromARGB(255, 163, 76, 255),
                      startTime: "12:35",
                      endTime: "14:10",
                      title: "Daily Project",
                      participants: ["ME", "RICHARD", "CIRY", "+4"],
                    ),
                    DateCardSpacing(
                      color: Color.fromARGB(255, 112, 255, 156),
                      startTime: "15:00",
                      endTime: "16:30",
                      title: "Weekly Planning",
                      participants: ["DEN", "NANNA", "MARK"],
                    ),
                    DateCardSpacing(
                      color: Color.fromARGB(255, 255, 178, 255),
                      startTime: "15:00",
                      endTime: "17:50",
                      title: "Flutter Development",
                      participants: ["JABINKIM", "NICO", "+177"],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
