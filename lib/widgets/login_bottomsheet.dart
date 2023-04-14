import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/solid_button.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo-big.png', width: 45.0,),
              IconButton(onPressed: () {}, icon: Icon(Icons.clear, size: 30.0,))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: 'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )
              ),
              TextSpan(
                  text: '  or  ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                  )
              ),
              TextSpan(
                  text: 'SignUp',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  )
              )
            ]
          )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 40.0,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 10.0),
                  child: Text(
                    '+94 ',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),),
                ),
                labelText: 'Mobile Number',
                labelStyle:  TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                  width: 1.0,
                  color: textNewColor
                )),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black54
                  ))
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: 'By continueing, I agree to the ',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
                    )
                ),
                TextSpan(
                    text: 'Term of Use ',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    )
                ),
                TextSpan(
                    text: ' &',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                    )
                ),
                TextSpan(
                    text: 'Privacy & Policy',
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )),
          SizedBox(
            height: 20.0,
          ),
          SolidButton(text: 'CONTINUE'),
          SizedBox(
            height: 20.0,
          ),
          RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: 'Having trouble logging in?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10.0,
                    )
                ),
                TextSpan(
                    text: ' Get Help',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    )
                ),
              ]
          )),
        ],
      ),
    );
  }
}
