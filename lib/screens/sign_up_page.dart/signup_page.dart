import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin/screens/sign_up_screen4.dart';
import 'package:linkedin/widgets/constants.dart';





class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});
  @override
  Widget build(BuildContext context ) {
    return SafeArea(
    child: Scaffold(
      body: SizedBox(width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                child: SvgPicture.asset("assets/Logo.svg", 
                width: 35, 
                  height: 35,
          
                ),
                
              ),
              SizedBox(height: 40,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add your name', 
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                    ),)
          
                    ,SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
          labelText: 'First Name',
          
                ),
              ),
          
          
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
          labelText: 'Last Name',
          
                ),
          
          ),
          
          SizedBox(height: 40,),
          
          
          
                  SizedBox(
                      height: 55,
                      
                      width: double.infinity,
                      
                      child: ElevatedButton(onPressed: (){
          
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen4()));
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
              )
            ],
          ),
        ),
      )
    )

    );
  }
}