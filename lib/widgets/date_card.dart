import 'package:flutter/material.dart';

class DateCardSpacing extends StatelessWidget {
  const DateCardSpacing(
      {super.key,
      required this.color,
      required this.startTime,
      required this.endTime,
      required this.title,
      required this.participants});

  final Color color;
  final String startTime; // "11:30"
  final String endTime;
  final String title;
  final List<String> participants;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DateCard(
        color: color,
        startTime: startTime,
        endTime: endTime,
        title: title,
        participants: participants,
      ),
      const SizedBox(height: 10),
    ]);
  }
}

class DateCard extends StatelessWidget {
  const DateCard(
      {super.key,
      required this.color,
      required this.startTime,
      required this.endTime,
      required this.title,
      required this.participants});

  final Color color;
  final String startTime; // "11:30"
  final String endTime;
  final String title;
  final List<String> participants;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    startTime.split(":")[0].toString(),
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                      letterSpacing: -0.5, // Adjust letter spacing
                    ),
                  ),
                  Text(
                    startTime.split(":")[1].toString(),
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                      height: 1.0,
                      letterSpacing: -0.5, // Adjust letter spacing
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    height: 40,
                    width: 2.0,
                    color: Colors.black,
                  ),
                  Text(
                    endTime.split(":")[0].toString(),
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.w700,
                      height: 1.0, // Adjust height to reduce vertical
                      letterSpacing: -0.5, // Adjust letter spacing
                    ),
                  ),
                  Text(
                    endTime.split(":")[1].toString(),
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                      height: 1.0,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.split(" ")[0].toString().toUpperCase(),
                        style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Text(
                        title.split(" ")[1].toString().toUpperCase(),
                        style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: participants
                            .map((participant) => Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    participant,
                                    style: const TextStyle(
                                      height: 1.0,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
