import 'package:flutter/material.dart';
import 'package:friendy/homePage/components/custCheckBox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:friendy/style/palette.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  ScrollController _TaskScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
        bottom: 5
      ),
      child: Container(
        height: 150,
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          shape: BoxShape.rectangle,
          color: Color.fromRGBO(190, 227, 247, 1.0),
        ),
        child: Scrollbar(
          controller: _TaskScrollController,
          child: SingleChildScrollView(
            controller: _TaskScrollController,
            child: Column(
              children: [
                Text(
                    "Task(s)",
                    style: GoogleFonts.strait(
                        textStyle: TextStyle(
                            color: Palette.kDarkBlue,
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    )
                ),
                CustCheckBox(
                  label: "Presentation Slides",
                ),
                CustCheckBox(
                    label: "Report final draft"
                ),
                CustCheckBox(
                    label: "GES1034 midterm essay"
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
