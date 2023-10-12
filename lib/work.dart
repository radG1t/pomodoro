import 'dart:math';
//import 'package:pomodoro/obj.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
  void _toggleIcon() {
    setState(() {
      isIconChanged = !isIconChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.1;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 56, 45),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pomodoro',
                style: TextStyle(fontSize: 22, color: Colors.white54),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.format_list_numbered_sharp,
                    size: 28,
                    color: Colors.white70,
                  ))
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 206, 56, 45),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
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
                  animationDuration: 25 * 60 * 1000,
                  lineWidth: 6.0,
                  percent: 1,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.white60,
                  progressColor: const Color.fromARGB(255, 177, 3, 3),
                  center: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120), //55 or 120 ?
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
                            minutes: 25,
                            seconds: 0,
                          ),
                        ),
                        onEnd: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                //CupertinoButton( ?
                                builder: (context) => const ShortBreak()),
                          );

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
                  Icons.laptop_windows_sharp,
                  size: 46,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            //CupertinoButton( ?
                            builder: (context) => const ShortBreak()),
                      );
                      //          playSound();
                    },
                    //_startCountDown,
                    child: const Text(
                      'S T A R T',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: boxHeight * 0.4,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          // shape: BorderRadius.all(radius),
                          border: Border.all(color: Colors.black12),
                          //           color: Colors.white54,
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
                            // prefixStyle: TextStyle(
                            //     fontSize: 11,
                            //     color: Colors.black38,
                            //     fontStyle: FontStyle.italic),

                            counter: Text(
                              '~ 100  ',
                              style:
                                  TextStyle(fontSize: 9, color: Colors.black38),
                            ),
                            labelText: ' any note :',
                            labelStyle: TextStyle(color: Colors.black38),
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                          maxLength: 100,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        _toggleIcon();
                      },
                      icon: Icon(isIconChanged
                          ? Icons.volume_off_outlined
                          : Icons.volume_up_outlined)),
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
