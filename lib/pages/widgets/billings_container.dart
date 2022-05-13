import 'package:flutter/material.dart';

class BillingsContainer extends StatelessWidget {
  const BillingsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 37, right: 37, bottom: 15),
      decoration: BoxDecoration(color: Color(0xffF1F0F0)),
      child: const ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 22.5,
        ),
        title: Text(
          "BillingDetails",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text("numbers 9898 9899 9989"),
        trailing: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            "12121212",
            style: TextStyle(fontSize: 8),
          ),
        ),
      ),
    );
  }
}
