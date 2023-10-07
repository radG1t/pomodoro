import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*
  int tl = 10;
  bool animationkey = false;

  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (tl > 0) {
        setState(() {
          animationkey = !animationkey;
          tl--;
        });
      } else {
        timer.cancel();
      }
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 105,
                animation: true,
                animationDuration: 1500000,
                lineWidth: 5.0,
                percent: 1,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.grey,
                progressColor: Colors.green.shade800,
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
                          minutes: 25,
                          seconds: 0,
                        ),
                      ),
                      onEnd: () {
                        //page route kire khar to brake page
                      },
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.deepPurple,
                onPressed: () {},
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
    );
  }
}

// ahdaf
// ye navar mikham k ba time harkat kone o por she
// mikham har 3 min range navar sabz tar beshe
// stop - start - resume !!!
//