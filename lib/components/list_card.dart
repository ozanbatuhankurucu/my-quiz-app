import 'package:flutter/material.dart';
import 'package:my_quiz_app/constants.dart';

class ListCard extends StatelessWidget {
  final String cardNumber;
  final String cardTitle;
  final Function onPress;
  ListCard({this.cardNumber, this.cardTitle, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(
          cardNumber,
          style: kCardTextStyle,
        ),
        trailing: IconButton(
          onPressed: onPress,
          icon: Icon(
            Icons.arrow_forward,
            color: Color(0xff75daad),
          ),
        ),
        title: Text(cardTitle,
            style: kCardTextStyle,),
      ),
    );
  }
}
