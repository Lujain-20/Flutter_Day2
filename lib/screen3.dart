import 'package:flutter/material.dart';
import 'package:day2/CustoomButton.dart';
import 'CustoomFiledInput.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});
  @override
  State<Screen3> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<Screen3> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 15, 5, 25),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, size: 30),
                        onPressed: () {},
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Welcome Back.",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Let’s sign up",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.all(5),
              child: CustomInput(
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                label: 'Full name',
                obscureText: false,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.all(5),
              child: CustomInput(
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
                label: 'Email',
                obscureText: false,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.all(5),
              child: CustomInput(
                hintText: 'Enter your Password',
                prefixIcon: Icon(Icons.lock_outline),
                label: 'Password',
                obscureText: false,
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.all(5),
              child: CustomInput(
                hintText: 'Enter your Password',
                prefixIcon: Icon(Icons.lock_outline),
                label: 'Confirm Password',
                obscureText: false,
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
Container(
  padding: EdgeInsets.fromLTRB(5, 5, 5, 5), 
  margin: EdgeInsets.all(5),               
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center, 
    children: [
      Text(
        '200 USD',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),

  Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Slider(
                value: 50,
                min: 0,
                max: 100,
                divisions: 10,
                label: '50',
                onChanged: (value) {
                  setState(() {
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    value: true,
                    title: Text("Checkbox Label"),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  SwitchListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: true,
                    title: Text("Label"),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),


         Container(
  padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
  margin: EdgeInsets.all(5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CustomButton(
        text: "Sign up",
       color: Color.fromARGB(255, 209, 63, 63),
        textColor: Colors.white,
        onPressed: (){},
      ),

      SizedBox(height: 20), 

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 15,
               color: Color.fromARGB(255, 209, 63, 63),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
)

    ],
        ),
      ),
    ),
  );
}
}