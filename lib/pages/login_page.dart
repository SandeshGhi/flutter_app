import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_icons.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/config/app_strings.dart';
import 'package:flutter_test_application/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue[900],
        // resizeToAvoidBottomInset: false, // Keyboard open wont affect stylings
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    // fontFamily: "Urbanist",
                  ),),
                SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.loginToContinue, 
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {
                  print('Forgot is Clicked');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white.withOpacity(0.8),
                ), 
                child: Text('Forgot Password?')),
            ),
            SizedBox(
                  height: 32,
                ),
              SizedBox(
                height: 48,
                width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) {
                  //     return HomePage();
                  //   },
                  // ));
                  Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
                child: Text('Log in')),
              ),
              Spacer(),
              Text('Or sign in with', 
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              SizedBox(
                  height: 16,
                ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                  print('Google is clicked');
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                  AppIcons.icGoogle, 
                  width: 22, 
                  height: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with Google')
                ],
                )
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                  print('Facebook is clicked');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                  AppIcons.icFacebook, 
                  width: 22, 
                  height: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Login with Facebook'),
                ],
                )
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Don't have an acoount? ", 
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(onPressed: () {}, style: TextButton.styleFrom(
                    foregroundColor: Colors.amber,
                  ), 
                  child: Text('Sign Up', style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),)),
                ],
              ),
              Spacer(),
              ],
              )
              ),
          ),
        ));
  }
}