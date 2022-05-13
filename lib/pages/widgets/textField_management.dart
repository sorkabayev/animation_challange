import 'package:animation_challange/model/profile_category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldManagement extends StatelessWidget {

  final TextFieldLabels trc;

  const TextFieldManagement({Key? key,required this.trc,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(left: 40,right: 40),
      child: TextField(
        decoration: InputDecoration(
          label: Text(trc.text2!),
          suffixIcon: IconButton(onPressed: (){
            //do something
          }, icon: const Icon(CupertinoIcons.pen))
        ),
      ),
    );
  }
}
