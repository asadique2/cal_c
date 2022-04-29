import 'package:cal_c/constant/colors.dart';
import 'package:cal_c/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked_annotations.dart';
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  static const  String id = 'login_screen';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
    body:SingleChildScrollView(
        child:
      Column(
      children: [
        SizedBox(height: 29.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            Text('Skip>',  style: clickbleTextStyle,),
            SizedBox(width: 29.w),
          ],
        ),
        SizedBox(height: 42.h,),
        SizedBox(
          height: 253.h,
          child:Image.asset('images/login_screen.png') ,
        ),

        SizedBox(height: 22.h,),
        Text('ExpoC',style: TextStyle(fontSize: 68.sp,fontWeight: FontWeight.bold,color: kSecondaryColor,),),
        Text('SignIn into your account',style: clickbleTextStyle.copyWith(color: kGreyColor)),
        SizedBox(height: 49.h,),
        Container(
          height: 49.h,width: 292.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: kGreyColor,),
        ),
        SizedBox(height: 25.h,),
        SizedBox(
          height: 49.h,width: 292.w,
          child: TextFormField(
            decoration: InputDecoration(),
          ),
        ),
        SizedBox(height: 16.h,),
        SizedBox(width: 269,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Forgot your password?',style: clickbleTextStyle,),
          ],
        ),),
        SizedBox(height: 50.h,),
        Container(
          height: 43.h,width: 207.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color:kBaseColor,),
          child: Center(
            child:
            Text('Sign In',style: TextStyle(fontSize: 12.sp,color: Colors.white),)
          ),
        ),
        SizedBox(height: 19.h,),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Don’t have an account? '),
              TextSpan(text: 'Create' , style: clickbleTextStyle) ,
            ]
          )
        )


      ],
    ),));
  }
}
