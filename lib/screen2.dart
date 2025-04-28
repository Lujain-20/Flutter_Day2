import 'package:flutter/material.dart';
import"package:day2/CustoomButton.dart";
import 'CustoomFiledInput.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Screen2> {
    final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
    String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "recovery Password ";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: SingleChildScrollView(
    child: Form(
      key: _formKey,
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
                      "Let’s sign in",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Email input
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: CustomInput(
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.email),
              label: 'Email',
              obscureText: false,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: CustomInput(
              hintText: 'Enter your Password',
              prefixIcon: Icon(Icons.lock_outline),
              validator: _validatePassword,
              label: 'Password',
              obscureText: false,
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '200 USD',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Slider(
              value: 50,
              min: 0,
              max: 100,
              divisions: 10,
              label: '50',
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
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
                  value: true,
                  title: Text("Label"),
                  controlAffinity: ListTileControlAffinity.leading,
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
             

                SizedBox(height: 15),

                Text('___________   or continue with Google  ___________'),

                SizedBox(height: 15),

                CustomButton(
                  image: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/480px-Google_%22G%22_logo.svg.png',
                    width: 30,
                    height: 30,
                  ),
                  text: "Continue with Google",
                  color: Colors.white,
                  textColor: Colors.black,
                  borderColor: Color.fromARGB(255, 207, 202, 202),
                  borderWidth: 1,
                  onPressed: (){},
                ),

                SizedBox(height: 10),

                CustomButton(
                  icon: Icon(
                    Icons.facebook,
                    size: 40,
                    color: Color.fromARGB(255, 2, 92, 165),
                  ),
                  text: "Continue with Facebook",
                  color:  Colors.white,
                  textColor: Colors.black,
                  borderColor: Color.fromARGB(255, 221, 215, 215),
                  borderWidth: 1,
                  onPressed: (){},
                ),

                SizedBox(height: 25),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      text: "Sign in",
                     color: Color.fromARGB(255, 209, 63, 63),
                      textColor: Colors.white,
                      onPressed:(){  _formKey.currentState?.validate();}
                     
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign In',
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
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);
  }
}