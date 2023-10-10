//bring all shits here
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void timerbox(int du, Color backgroundColor, Color forgroundColor) {
  CircularPercentIndicator(
    radius: 105,
    animation: true,
    animationDuration: du, //00000,
    lineWidth: 6.0,
    percent: 1,
    circularStrokeCap: CircularStrokeCap.round,
    backgroundColor: backgroundColor,
    progressColor: forgroundColor,
    center: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120), //55 or 120 ?
        color: const Color.fromARGB(80, 158, 158, 158),
      ),
      height: 285,
      width: 285,
      child: Center(
        child: TimerCountdown(
          colonsTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          timeTextStyle: const TextStyle(color: Colors.white, fontSize: 32),
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
            //    playSound();
            //page route kire khar to brake page
          },
        ),
      ),
    ),
  );
}
// void vloumeIcon(){
//   bool isIconChanged = false;
//   void _toggleIcon() {
//     setState(() {
//       isIconChanged = !isIconChanged;
//     });
//   }

//      const SizedBox(
//                   height: 5,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: IconButton(
//                       onPressed: () {
//                         _toggleIcon();
//                       },
//                       icon: Icon(isIconChanged
//                           ? Icons.volume_off_outlined
//                           : Icons.volume_up_outlined)),
//                 ),
// }