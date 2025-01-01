import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin/widgets/constants.dart';


class SignUpScreen4 extends StatefulWidget {
  const SignUpScreen4({super.key});

  @override
  State<SignUpScreen4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpScreen4> {


        bool remember = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
              
                  SvgPicture.asset("assets/Logo.svg", 
                                  width: 40,
                                  height: 40
                                  ),
              
                            SizedBox(height: 40,),
              
                        Text('Add your Email or phone', 
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold
                        ),),



                        SizedBox(height: 40,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email or Phone'
                          ),
                        ),

                          SizedBox(height: 40,),

                        SizedBox(
                      height: 55,
                      
                      width: double.infinity,
                      
                      child: ElevatedButton(onPressed: (){
          
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                      },
                        style: ButtonStyle(
                          backgroundColor: 
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(color: kPrimaryColor),
                            )
                          ) 
                        ),
                         child: Text("Continue",
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                         ),),
                      ),
                    ),
                        
              
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// 19.00