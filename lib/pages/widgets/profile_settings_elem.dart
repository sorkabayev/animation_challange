import 'package:animation_challange/model/profile_category_model.dart';
import 'package:flutter/material.dart';


class ProfileSettingsElem extends StatelessWidget {
  final ProfileModel e;

  const ProfileSettingsElem({Key? key, required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, e.id!);
      },
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: e.icon,
      ),
      title: Text(e.text),
      trailing:
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 17,
          color: Colors.black,
      ),
    );
  }
}
