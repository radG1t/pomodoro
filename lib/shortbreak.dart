//breakpage
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro/obj.dart';
import 'dart:math';

import 'package:pomodoro/work.dart';

class ShortBreak extends StatefulWidget {
  const ShortBreak({super.key});

  @override
  State<ShortBreak> createState() => _ShortBreakState();
}

String getRandomSentence() {
  List<String> sentences = [
    'Rest your mind, refresh your focus',
    'Get rest',
    'Take a deep breath',
    'Relax and recharge!',
    'Give yourself a break,You deserve it;)',
    'Disconnect and recharge',
  ];
  Random random = Random();
  int index = random.nextInt(sentences.length);
  return sentences[index];
}

class _ShortBreakState extends State<ShortBreak> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.1;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 97, 68),
        appBar: CustomAppBar(
          backgroundColor: const Color.fromARGB(255, 37, 97, 68),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 36),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: boxHeight,
                ),
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
                        colonsTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        timeTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 32),
                        descriptionTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 12),
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
                  height: boxHeight * 0.4,
                ),
                Text(
                  getRandomSentence(),
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(
                  height: boxHeight * 0.4,
                ),
                const Icon(
                  Icons.local_florist,
                  size: 56,
                  color: Colors.white54,
                ),
                SizedBox(
                  height: boxHeight * 0.2,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                            //CupertinoButton( ?
                            builder: (context) => const FocusPage()),
                      );
                      //          playSound();
                    },
                    //_startCountDown,
                    child: const Text(
                      'SKIP break',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        // shape: BorderRadius.all(radius),
                        border: Border.all(color: Colors.black12),
                        //           color: Colors.white54,
                      ),
                      child: const TextField(
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        showCursor: true,
                        cursorColor: Color.fromARGB(115, 75, 70, 70),
                        cursorRadius: Radius.circular(12),
                        cursorHeight: 18,
                        autofillHints: Characters.empty,
                        decoration: InputDecoration(
                          labelText: ' any note :',
                          labelStyle: TextStyle(color: Colors.black38),
                          border: InputBorder.none,
                        ),
                        maxLines: null,
                        maxLength: 300,
                      ),
                    ),
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
//hide counter 