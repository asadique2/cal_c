import 'package:cal_c/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      scrollPhysics: const ClampingScrollPhysics(),
      rawPages: const [
        IntroPage(
          'images/screen4.png',
          'Easy access to mrdical reports',
          'When you get notifications, they’ll show up here',
        ),
        IntroPage(
          'images/screen5.png',
          'Easy access to mrdical reports',
          'When you get notifications, they’ll show up here',
        ),
        IntroPage(
          'images/screen6.png',
          'Easy access to mrdical reports',
          'When you get notifications, they’ll show up here',
        ),
      ],
      globalFooter: Container(
        height: 294.h,
        color: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            Text(
              'Welcom to YourApp',
              style: TextStyle(
                fontSize: 27.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 13.h,
            ),
            SizedBox(
              width: 196.w,
              child: Text(
                'Your digital healthcare campanion',
                style: TextStyle(fontSize: 15.sp, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Container(
              width: 208.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: kBaseColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Login & SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            SizedBox(
              width: 222.w,
              child: Row(
                children: [
                  Checkbox(
                      splashRadius: 2,
                      side: const BorderSide(color: kSecondaryColor, width: 2),
                      checkColor: kBaseColor,
                      activeColor: Colors.white,
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      }),
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          'I accept term and condition ',
                          style: TextStyle(fontSize: 13.sp, color: kBaseColor),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Privacy policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 13.sp,
                            color: kBaseColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      showDoneButton: false,
      showNextButton: false,
    );
  }
}

class IntroPage extends StatelessWidget {
  final String heading;
  final String bodyText;
  final String imageUrl;
  const IntroPage(this.imageUrl, this.heading, this.bodyText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff2A8F87),
            Color.fromARGB(0, 208, 230, 228),
          ],
        ),
      ),
      height: 550.h,
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          Image.asset(
            imageUrl,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            heading,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            bodyText,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
