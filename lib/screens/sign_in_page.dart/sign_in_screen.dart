import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin/screens/sign_in_page.dart/forgot_password.dart';
import 'package:linkedin/screens/sign_up_page.dart/sign_up_screen.dart';
import 'package:linkedin/screens/sign_up_page.dart/signup_page.dart';
import 'package:linkedin/widgets/constants.dart';
import 'package:flutter/src/rendering/box.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

bool remember = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: SvgPicture.asset("assets/Logo.svg",
                width: 35, height: 35,

              ),
            ),
            SizedBox(height: 0,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Or', 
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,

                    ),),
                    Padding(padding: EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen2()));

                        },
                        child: Text("Join LinkedIn ",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),


                    ),


                 
                  
                  ],
                ),
                SizedBox(height: 0,),
                  
                    SizedBox(height: 5,),
                 
                

                SizedBox(height: 0,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email or Phone',
                          ),
                        ),

                           SizedBox(height: 0,),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye) ,

                            labelText: 'Password '
                          ),
                        ),
  Row(
                            children: [
                              Checkbox(value: remember,
                              activeColor: const Color.fromRGBO(42, 117, 179, 1)
                              , onChanged: (value){
                                setState(() {
                                  remember = value!;
                                });


                              }),
                              SizedBox(width: 0,),

                              Text('Agree Terms & conditions', 
                              style: TextStyle(
                                color: Colors.black87,
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                              ),),
                                    SizedBox(width: 10,),
                              Text('Learn more', 
                              style: TextStyle(
                                fontSize: 14,
                                color: kPrimaryColor,

                              ),)
                             
                            ],
                          ),

              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                  },
                  child: Text('Forgot password?', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 8, 101, 177)
                  ),),
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
                       child: Text("Log in",
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                       ),),
                    ),
                  ),


             

                      SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: .3,
                      width: MediaQuery.of(context).size.width/2.6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    
                    ),
                  ),
                  Text('Or', 
                  style:TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ) ,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: .3,
                      width: MediaQuery.of(context).size.width/2.7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    
                    ),
                  ),

                ],
              ),

              SizedBox(height: 15,),
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
                    SizedBox(height: 15,),

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
                          
                          SvgPicture.asset("assets/apple-logo.svg", 
                          width: 23, height: 23,),
                            SizedBox(width: 20,),
                          Text('Sign in with Apple', 
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18

                          ),)
                        ],
                       )
                    ),
                  ),

                    SizedBox(height: 15,),
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
            )


          ],
        ),
      )
    );
  }
}