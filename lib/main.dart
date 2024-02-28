import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
      // The Screen Size in Figma
      designSize: const Size(360, 640),
    );
  }
}

Widget textField({required String hint}) {
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.h,
      ),
      filled: true,
      fillColor: const Color(0xffF5F6FA),
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 52.h),
              Text(
                'Sign Up to Maseterminds',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 4.h),
              Wrap(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    ' Login!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              textField(hint: 'Full Name'),
              SizedBox(height: 16.h),
              textField(hint: 'Email'),
              SizedBox(height: 16.h),
              textField(hint: 'Password'),
              SizedBox(height: 16.h),
              textField(hint: 'Confirm Password'),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF6688FF)),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 16.h)),
                  ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(width: 16.w),
                  Text(
                    'or Sign up via',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                        BorderSide(color: Colors.black12)),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 16.h)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/Google Image.png",
                        width: 20.w,
                        height: 20.h,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Wrap(
                children: [
                  Text(
                    'By Singing up in Maseterminds You Agree to Our',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
