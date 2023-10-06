import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tl = 10; // time left
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
                radius: 60.0,
                animation: true,
                animationDuration: tl * 10000,
                lineWidth: 5.0,
                percent: 1,
                center: Text(
                  tl == 0 ? 'DONE' : tl.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.grey,
                progressColor: Colors.green.shade800,
              ),
              MaterialButton(
                color: Colors.deepPurple,
                onPressed: _startCountDown,
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
/*
class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timerDurationInMinutes = 25;
  late Timer timer;
  bool isTimerRunning = false;

  void startTimer() {
    timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      if (timerDurationInMinutes > 0) {
        setState(() {
          timerDurationInMinutes--;
        });
      } else {
        timer.cancel();
        setState(() {
          isTimerRunning = false;
        });
        // Optional: You can perform additional actions when the timer completes.
        // For example, show a notification or play a sound.
        // Do something here...
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '${timerDurationInMinutes.toString().padLeft(2, '0')}:00',
          style: const TextStyle(fontSize: 40),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (!isTimerRunning) {
              setState(() {
                timerDurationInMinutes = 25;
                isTimerRunning = true;
              });
              startTimer();
            }
          },
          child: const Text('Start Timer'),
        ),
      ],
    );
  }
}
*/
