import 'package:flutter/material.dart';
import"package:day2/CustoomButton.dart";

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(1, 100, 1, 10),
              margin: EdgeInsets.fromLTRB(1, 100, 5, 1),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      
                    Image.asset("assets/images/HomeImg.png",
                   
                      width: 350,
                      height: 280,),
                       SizedBox(height: 20),
                     Text(
                       " Enterprise Team",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        
                        ),
                      ),
                        SizedBox(height: 20),
                     Text(
                       " Management ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        SizedBox(height: 20),
                     Text(
                       ' With an extensive menu prepared by talented  chefs, ',
                        style: TextStyle(
                          fontSize: 12,
                       color: Color.fromARGB(255, 96, 93, 93),
                        ),
                      ),
                     Text(
                       '   fresh quality food.',
                        style: TextStyle(
                          fontSize: 12,
                       color: Color.fromARGB(255, 96, 93, 93),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),

Container(
  padding: EdgeInsets.all(5),
  child: CustomButton(
    text: "Sign Up",
    color: Color.fromARGB(255, 209, 63, 63),
    textColor: Colors.white,
    onPressed: (){},
  ),
),
Container(
  padding: EdgeInsets.all(5),
  child: CustomButton(
    text: "Already have an account",
    color:  Colors.white, 
    textColor: Colors.black, 
    borderColor: const Color.fromARGB(255, 207, 202, 202),
    borderWidth: 1,
    onPressed: (){},
  ),
)
  
            ],
          ),
        ),
      );
    }
  }