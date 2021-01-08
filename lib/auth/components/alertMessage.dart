import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AlertMessage extends StatelessWidget {
  final String errorMessage;

  AlertMessage({
    this.errorMessage
  });

  @override
  Widget build(BuildContext context) {
    if (errorMessage != null) {
      return Container(
          color: Colors.amber,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.error_outline),
              ),
              Expanded(
                child: AutoSizeText(
                  errorMessage,
                  maxLines: 3,
                ),
              ),
            ],
          )
      );
    }
    return SizedBox(height: 0,);
  }
}
