import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin/screens/sign_in_page.dart/sign_in_screen.dart';
import 'package:linkedin/screens/sign_up_page.dart/sign_up_screen.dart';
import 'package:linkedin/screens/sign_up_page.dart/signup_page.dart';
import 'package:linkedin/screens/sign_up_screen4.dart';
import 'package:linkedin/widgets/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Logo.svg",
                      width: 80,
                      height: 80,
                    ),
                 
                SizedBox(height: 40,),
                Text("Join a trusted community of 800M proffesionals", textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300
                  ),
                )
                          
                           ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width/5,
              ),
              Padding(padding: 
              EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('By clicking Agree & Join or Continue , you agree to the Linkedin User Aggrement Privacy Policy and Cookie poolicy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12
                  ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    
                    width: double.infinity,
                    
                    child: ElevatedButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen2()));
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
                       child: Text("Agree & Join",
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                       ),),
                    ),
                  ),

                    SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    
                    width: double.infinity,
                    
                    child: ElevatedButton(onPressed: (){

                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                    },
                      style: ButtonStyle(
                        backgroundColor: 
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.black),
                          )
                        ) 
                      ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          SvgPicture.asset("assets/icons-google.svg", 
                          width: 23, height: 23,),
                            SizedBox(width: 20,),
                          Text('Continue with Google', 
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18

                          ),)
                        ],
                       )
                    ),
                  ),

                    SizedBox(height: 20,),
                  SizedBox(
                    height: 55,
                    
                    width: double.infinity,
                    
                    child: ElevatedButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen2()));
                    },
                      style: ButtonStyle(
                        backgroundColor: 
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: Colors.black),
                          )
                        ) 
                      ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          SvgPicture.asset("assets/facebook-logo.svg", 
                          width: 23, height: 23,),
                            SizedBox(width: 20,),
                          Text('Continue with Facebook', 
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18

                          ),)
                        ],
                       )
                    ),
                  ),

                ],
              ),
              ),

              SizedBox(height: 15,),
              Center(
                child: InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
         

        )
      ),
      
      );
  }
}




// 14.00 minute