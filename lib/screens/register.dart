import 'package:flutter/material.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/gender_button.dart';
import 'package:shopping_app/widgets/solid_button.dart';
import 'package:shopping_app/widgets/text_form_field.dart';

class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Complete your signup',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black ,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile Number',
                          style: TextStyle(
                            fontSize: 8.0,
                            color: textNewColor
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text('123456')
                      ],
                    ),
                    CircleAvatar(
                        child: Icon(Icons.check, size: 14.0,),
                      backgroundColor: Colors.teal,
                      radius: 12.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormFieldNew(
                labelText: 'Create Password',
                validator: (value) {
                  print(value);
                  if(value!.isEmpty){
                    print('empty');
                    return 'Password cant be empty';
                  }
                }
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormFieldNew(
                    labelText: 'Full Name (Optional)',
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormFieldNew(
                  labelText: 'Email (Optional)',
                ),
                SizedBox(
                  height: 10.0,
                ),
                GenderButton(),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormFieldNew(
                  labelText: 'Alternative Mobile Number',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 10.0),
                    child: Text(
                      '+94 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),),
                  ),
                    validator: (value) {
                      print(value);
                      if(value!.isEmpty){
                        print('empty');
                        return 'Alternative Mobile Number cant be empty';
                      }
                    }
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormFieldNew(
                  labelText: 'Hint Name',
                ),
                SizedBox(
                  height: 10.0,
                ),
                SolidButton(
                    text: 'CREATE ACCOUNT',
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    minusWidth: 0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
