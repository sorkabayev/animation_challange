import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 37, right: 37, bottom: 35),
      decoration: BoxDecoration(color: Color(0xffF1F0F0)),
      child: Text("feffff\nefefefeefef\nfdfeff",style: TextStyle(fontSize: 15),)
    );
  }
}