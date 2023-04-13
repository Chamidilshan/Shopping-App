import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          child: ListTile(
            leading: Image.asset('assets/images/orders.png', width: 25.0,),
            title: Text('Orders', style: Theme.of(context).textTheme.bodyText1,),
            subtitle: Text('Check your order', style: Theme.of(context).textTheme.caption,),
            trailing: Icon(CupertinoIcons.chevron_forward, size: 16.0,),
          ),
        ),
        Divider()
      ],
    );
  }
}
