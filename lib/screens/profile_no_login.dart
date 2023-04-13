import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/profile_item.dart';

class ProdileNoLoginPage extends StatelessWidget {
  const ProdileNoLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.0,
          child: Column(
            children: [
              Container(
                height: 110.0,
                color: bgNewColor,
              ),
              Container(
                height: 70.0,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileItem(
                title: 'Orders',
                subtitle: 'Check your order status',
                assetName: 'assets/images/orders.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Help Center',
                subtitle: 'Help regarding your recent purchase',
                assetName: 'assets/images/help-desk.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Wishlist',
                subtitle: 'Your most loved style',
                assetName: 'assets/images/wishlist.png',
                isLast: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileItem(
                title: 'Scan for coupon',
                assetName: 'assets/images/qr-code.png',
                isLast: false,
              ),
              ProfileItem(
                title: 'Refer & Earn',
                assetName: 'assets/images/revenue.png',
                isLast: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
