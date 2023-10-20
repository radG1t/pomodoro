//bring all shits here
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro/setting.dart';
import 'package:pomodoro/shortbreak.dart';

void timerbox(int du, Color backgroundColor, Color forgroundColor) {
  CircularPercentIndicator(
    radius: 105,
    animation: true,
    animationDuration: du * 60000,
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

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 36,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BtmNvItems(
                iconFileName: Icons.settings,
                title: 'setting',
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          //CupertinoButton( ?
                          builder: (context) => const setting()),
                    );
                  },
                  child: const BtmNvItems(
                      iconFileName: Icons.timer_outlined, title: 'Foucos')),
              const BtmNvItems(
                iconFileName: Icons.abc,
                title: 'setting',
              ),
              const BtmNvItems(iconFileName: Icons.abc, title: 'Foucos'),
            ],
          ),
        ),
      ),
    );
  }
}

class BtmNvItems extends StatelessWidget {
  final IconData iconFileName;
  //final String activeIconFileName;
  final String title;

  //final void ontap;
  const BtmNvItems(
      {super.key,
      required this.iconFileName,
      /*required this.activeIconFileName,*/ required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   Icon('Icons.$iconFileName' as IconData?),
        Icon(
          iconFileName,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 8, color: Colors.black, backgroundColor: Colors.white),
        ),
      ],
    );
  }
}

/*
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor; // Add a custom color parameter

  CustomAppBar({Key ? key,required this.backgroundColor})
  @override

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override


  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor, // Use the custom color here
      automaticallyImplyLeading: false,
      title: const Center(
        child: Text(
          'Pomodox',
          style: TextStyle(fontSize: 22, color: Colors.white54),
        ),
      ),
    );
  }
}
*/
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor; // Add a custom color parameter

  CustomAppBar({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor, // Use the custom color here
      automaticallyImplyLeading: false,
      title: const Center(
        child: Text(
          'Pomodox',
          style: TextStyle(fontSize: 22, color: Colors.white54),
        ),
      ),
    );
  }
}
