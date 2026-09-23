import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todotile extends StatelessWidget {
  Todotile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  bool value;
  String text;
  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Slidable(

      endActionPane: ActionPane(motion: StretchMotion(), children: [
        Expanded(
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0xFF2196F3),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF0D47A1),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 70,
          width: 415,
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.black,
                value: value,
                onChanged: onChanged,
                shape: StadiumBorder(side: BorderSide()),
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Mytext(title: text, check: value),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
