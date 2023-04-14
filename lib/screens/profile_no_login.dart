import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/profile_content.dart';
import 'package:shopping_app/widgets/profile_item.dart';
import 'package:shopping_app/widgets/solid_button.dart';
import 'package:shopping_app/widgets/login_bottomsheet.dart';

class ProdileNoLoginPage extends StatelessWidget {
  const ProdileNoLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.0,
          child: Stack(
            children: [
              Column(
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
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Container(
                  height: 132.0,
                  width: 132.0,
                  child: Container(
                    child: Card(
                      child: Image.asset('assets/images/profile.png', color: bgNewColor,),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 170.0,
                child: SolidButton(
                  text: 'LOG IN/SIGN UP',
                  minusWidth: 210, onPressed: () { Get.bottomSheet(LoginBottomSheet());},
                )
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
        ),
        SizedBox(
          height: 22.0,
        ),
        FooterContent(),
        SizedBox(
          height: 28.0,
        ),
        Text(
          'APP VERSION 0.0.1',
          style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(
          height: 60.0,
        )
      ],
    );
  }
}
