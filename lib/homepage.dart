import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initialTime = 0;
  int tl = 10; // time left
  late Timer timer;

  final TextEditingController _tlController = TextEditingController();

  void _startCountDown() {
    int inputTime = int.tryParse(_tlController.text) ?? 0;

    if (inputTime > 0) {
      setState(() {
        initialTime = inputTime;
        tl = inputTime;
      });

      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (tl > 0) {
          setState(() {
            tl--;
          });
        } else {
          timer.cancel();
        }
      });
    }
  }

  void _pauseCountDown() {
    if (timer.isActive) {
      timer.cancel();
    }
  }

  void _resumeCountDown() {
    if (tl > 0) {
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (tl > 0) {
          setState(() {
            tl--;
          });
        } else {
          timer.cancel();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: _tlController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter Time (in seconds)',
            ),
          ),
          /*     Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    tl == 0 ? 'DONE' : tl.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 40),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Time to focus!'),
            ],
          ),
        */
          CircularPercentIndicator(
            radius: 60.0,
            animation: true,
            animationDuration: 50000,
            lineWidth: 5.0,
            percent: 0.4,
            center: Text(
              tl == 0 ? 'DONE' : tl.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.grey,
            progressColor: Colors.green,
          ),
          MaterialButton(
            color: Colors.deepPurple,
            onPressed: _startCountDown,
            child: const Text(
              'S T A R T',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  _pauseCountDown();
                },
                child: const Text(
                  'P A U S E',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  _resumeCountDown();
                },
                child: const Text(
                  'R E S U M E',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// ahdaf    
// ye navar mikham k ba time harkat kone o por she 
// mikham har 3 min range navar sabz tar beshe 
// stop - start - resume !!!
//