import 'package:flutter/material.dart';

class BuildFormInput extends StatefulWidget {
  final placeholder;
  final controller;

  BuildFormInput({@required this.placeholder, @required this.controller});

  @override
  _BuildFormInputState createState() => _BuildFormInputState();
}

class _BuildFormInputState extends State<BuildFormInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF1F2F4),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: widget.placeholder,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
