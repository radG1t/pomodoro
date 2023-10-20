import 'dart:math';
//import 'package:pomodoro/obj.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro/obj.dart';
import 'package:pomodoro/shortbreak.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

String getRandomSentence() {
  List<String> sentences = [
    'Stay focused',
    'make it happen!',
    'Dream big, work hard',
    'Every small step counts',
    'Keep moving forward.'
  ];
  Random random = Random();
  int index = random.nextInt(sentences.length);
  return sentences[index];
}

bool isIconChanged = false;

class _FocusPageState extends State<FocusPage> {
  /* void _toggleIcon() {
    setState(() {
      isIconChanged = !isIconChanged;
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.1;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 206, 56, 45),
        appBar: CustomAppBar(
          backgroundColor: const Color.fromARGB(255, 206, 56, 45),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 68),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: boxHeight,
                ),
                //timerbox
                CircularPercentIndicator(
                  radius: 135,
                  animation: true,
                  animationDuration: 25 * 60 * 1000,
                  lineWidth: 6.0,
                  percent: 1,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.white60,
                  progressColor: const Color.fromARGB(255, 177, 3, 3),
                  center: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55), //55 or 120 ?
                      color: const Color.fromARGB(80, 158, 158, 158),
                    ),
                    child: Center(
                      child: TimerCountdown(
                        colonsTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 42),
                        timeTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 42),
                        descriptionTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        enableDescriptions: true,
                        spacerWidth: 5,
                        format: CountDownTimerFormat.minutesSeconds,
                        endTime: DateTime.now().add(
                          const Duration(
                            minutes: 25,
                            seconds: 0,
                          ),
                        ),
                        onEnd: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShortBreak()),
                          );
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
                  Icons.laptop_windows_sharp,
                  size: 46,
                  color: Colors.white54,
                ),
                SizedBox(
                  height: boxHeight * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //CupertinoButton( ?
                                  builder: (context) => const ShortBreak()),
                            );
                            //          playSound();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              height: 42,
                              width: 42,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        color: Color.fromARGB(255, 206, 56, 45),
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //CupertinoButton( ?
                                  builder: (context) => const ShortBreak()),
                            );
                            //          playSound();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              height: 53,
                              width: 53,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        height: 51,
                                        width: 51,
                                        color: Color.fromARGB(255, 206, 56, 45),
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //CupertinoButton( ?
                                  builder: (context) => const ShortBreak()),
                            );
                            //          playSound();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              height: 42,
                              width: 42,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        color: Color.fromARGB(255, 206, 56, 45),
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const TextField(
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          showCursor: true,
                          cursorColor: Color.fromARGB(115, 75, 70, 70),
                          cursorRadius: Radius.circular(12),
                          autofillHints: Characters.empty,
                          decoration: InputDecoration(
                            prefixText: '   ',
                            counter: Text(
                              '~ 100  ',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black38),
                            ),
                            labelText: ' any note :',
                            labelStyle:
                                TextStyle(color: Colors.black38, fontSize: 12),
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                          maxLength: 100,
                        ),
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

//master your minute, master your life
