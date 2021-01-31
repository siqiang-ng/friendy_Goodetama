import 'package:flutter/material.dart';
import 'package:friendy/homePage/components/dotCheckBox.dart';
import 'package:google_fonts/google_fonts.dart';

class CustCheckBox extends StatefulWidget {
  final String label;

  CustCheckBox({
    @required this.label,
  });

  @override
  _CustCheckBoxState createState() => _CustCheckBoxState();
}

class _CustCheckBoxState extends State<CustCheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: this.widget.label,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            DotCheckbox(
              size: 20,
              iconSize: 11,
            ),
            Expanded(
                child: Text(
                  label,
                  style: GoogleFonts.strait(
                    textStyle: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    )
                  )
                )
            ),
          ],
        ),
      ),
    );
  }
}
