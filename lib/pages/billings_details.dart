import 'package:animation_challange/model/grid_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/billings_container.dart';

class BillingDetails extends StatefulWidget {
  const BillingDetails({Key? key}) : super(key: key);

  static const String id = "billings_details";

  @override
  State<BillingDetails> createState() => _BillingDetailsState();
}

class _BillingDetailsState extends State<BillingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                CupertinoIcons.creditcard,
                size: 25,
              ),
              Text(
                "Billing details",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 80,
              ),
            ],
          ),
          SizedBox(
            height: 39,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => BillingsContainer(),
            separatorBuilder: (BuildContext context, int index) => Container(),
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}


