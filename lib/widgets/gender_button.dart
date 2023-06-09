import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';

class GenderButton extends StatelessWidget {
  GenderButton({Key? key, required this.onGenderTap, required this.genderValue}) : super(key: key);
  final Function(String value) onGenderTap;
  final String genderValue;
  final TextStyle activeStyle =  TextStyle(color: Colors.white);
  final TextStyle normalStyle = TextStyle(color: Colors.black54);


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 46.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: textNewColor)
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: (){
                onGenderTap('Female');
              },
              child: Container(
                color: genderValue=='Female'? Colors.pinkAccent : Colors.white,
                child: Center(child: Text('Female', style: genderValue=='Female'? activeStyle: normalStyle ,)),
              ),
            ),
          ),
          VerticalDivider(
            width: 2.0,
            color: Colors.grey,
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap('Male');
              },
              child: Container(
                color: genderValue=='Male'? Colors.pinkAccent : Colors.white,
                child: Center(child: Text('Male', style: genderValue=='Male'? activeStyle : normalStyle,)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
