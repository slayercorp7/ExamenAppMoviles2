import 'package:flutter/material.dart';

class GoogleBtn extends StatefulWidget {
  final String text;
  double widhtC = 0.0;
  double heightC = 0.0;
  late final VoidCallback onPressed;

  GoogleBtn({
    Key? key,
    required this.heightC,
    required this.widhtC,
    required this.onPressed,
    required this.text,
  });

  @override
  State<StatefulWidget> createState() {
    return (_GoogleBtn());
  }
}

class _GoogleBtn extends State<GoogleBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.only(top: 15),
          width: widget.widhtC,
          height: widget.heightC,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                colors: [Color(0xFFe4605e), Color(0xFFC04644)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.7],
              )),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
