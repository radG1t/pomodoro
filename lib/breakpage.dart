//breakpage
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BreakPage extends StatefulWidget {
  const BreakPage({super.key});

  @override
  State<BreakPage> createState() => _BreakPageState();
}

class _BreakPageState extends State<BreakPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.03;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Kire k h a r'),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings))
            ],
          ),
        ),
        backgroundColor: Colors.greenAccent.shade200,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 105,
                  animation: true,
                  animationDuration: 300000,
                  lineWidth: 5.0,
                  percent: 1,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.green.shade800,
                  progressColor: Colors.white30,
                  center: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150), //55 ?
                      color: const Color.fromARGB(80, 158, 158, 158),
                    ),
                    height: 285,
                    width: 285,
                    child: Center(
                      child: TimerCountdown(
                        colonsTextStyle: const TextStyle(color: Colors.white),
                        timeTextStyle: const TextStyle(color: Colors.white),
                        descriptionTextStyle:
                            const TextStyle(color: Colors.white),
                        enableDescriptions: true,
                        spacerWidth: 5,
                        format: CountDownTimerFormat.minutesSeconds,
                        endTime: DateTime.now().add(
                          const Duration(
                            minutes: 5,
                            seconds: 0,
                          ),
                        ),
                        onEnd: () {
                          //    playSound();
                          //page route kire khar to brake page
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: boxHeight,
                ),
                Text(
                  'Time for a break!',
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(
                  height: boxHeight,
                ),
                MaterialButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    //          playSound();
                  },
                  //_startCountDown,
                  child: const Text(
                    'S T A R T',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
