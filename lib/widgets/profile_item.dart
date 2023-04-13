import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key, required this.title, this.subtitle, required this.assetName, required this.isLast}) : super(key: key);
  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          child: ListTile(
            leading: Image.asset(assetName, width: 25.0,),
            title: Text(title, style: Theme.of(context).textTheme.bodyText1,),
            subtitle: subtitle!= null ? Text(subtitle!, style: Theme.of(context).textTheme.caption,) : null,
            trailing: InkWell(
                child: Icon(CupertinoIcons.chevron_forward, size: 16.0,)
            ),
          ),
        ),
        isLast ? Container() : Divider()
      ],
    );
  }
}
