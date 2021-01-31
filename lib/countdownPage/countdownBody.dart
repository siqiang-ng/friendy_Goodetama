import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:friendy/components/background.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:friendy/style/palette.dart';
import 'package:google_fonts/google_fonts.dart';

class CountdownBody extends StatefulWidget {
  @override
  _CountdownBodyState createState() => _CountdownBodyState();
}

class _CountdownBodyState extends State<CountdownBody> {
  CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 1800;

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    print('onEnd');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Background(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  shape: BoxShape.rectangle,
                  color: Palette.kSkyBlue
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CountdownTimer(
                    controller: controller,
                    endTime: endTime,
                    onEnd: onEnd,
                    widgetBuilder: (_, CurrentRemainingTime time) {
                      if (time == null) {
                        return Text(
                          'Times Up! Get some rest!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.strait(
                            textStyle: TextStyle(
                                fontSize: 40,
                                decoration: TextDecoration.none,
                                color: Palette.kDarkBlue
                            )
                          ),
                        );
                      }

                      String hrs = '${time.hours}'.trim() == 'null'
                          ? '00:'
                          : int.parse('${time.hours}') < 10
                            ? "0" + '${time.hours}:'
                            : '${time.hours}:';
                      String min = '${time.min}'.trim() == 'null'
                          ? ' 00:'
                          : int.parse('${time.min}') < 10
                            ? " 0" + '${time.min}:'
                            :  ' ${time.min}:';

                      String sec = int.parse('${time.sec}') < 10
                          ? " 0" + '${time.sec}'
                          :  ' ${time.sec}';

                      return Text(
                        hrs + min + sec,
                        style: GoogleFonts.strait(
                          textStyle: TextStyle(
                            fontSize: 40,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            color: Palette.kDarkBlue
                          )
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  onEnd();
                  controller.disposeTimer();
                },
                child: Icon(Icons.stop, color: Palette.kDarkBlue, size: 40)
              ),
              FlatButton(
                onPressed: () {
                  controller.start();
                },
                child: Icon(Icons.play_arrow, color: Palette.kDarkBlue, size: 40)
              )
            ],
          ),
          Spacer()
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}