import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InkWellTag extends StatelessWidget{
  String tagText;
  late Color textColor;
  late Color backgroundColor;

  InkWellTag({required this.tagText, required this.textColor, required this.backgroundColor});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 5.0,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Text(
                tagText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.orange.shade600,
              radius: 8.0,
              child: const Icon(
                Icons.clear,
                size: 10.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ));
  }

}