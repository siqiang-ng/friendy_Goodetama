import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';

class DotCheckbox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final Color selectedColor;
  final Color selectedIconColor;

  DotCheckbox({this.isChecked, this.size, this.iconSize, this.selectedColor, this.selectedIconColor});

  @override
  _DotCheckboxState createState() => _DotCheckboxState();
}

class _DotCheckboxState extends State<DotCheckbox> {

  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
            top: 5.0,
            left: 5.0,
            right: 10.0,
            bottom: 5.0
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              color: _isSelected? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(5.0),
              border: _isSelected ? null : Border.all(
                color: Colors.white,
                width: 2.0,
              )
          ),
          width: widget.size ?? 30,
          height: widget.size ?? 30,
          child: _isSelected ? Icon(
            Icons.circle,
            color: widget.selectedIconColor ?? Palette.kDarkBlue,
            size: widget.iconSize ?? 20,
          ) : null,
        ),
      ),
    );
  }
}
