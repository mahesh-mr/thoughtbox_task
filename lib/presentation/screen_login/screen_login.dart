import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';
import 'package:thoughtbox/presentation/screen_home/screen_home.dart';
import 'package:thoughtbox/presentation/screen_login/widgets/cusrom_button.dart';
import 'package:thoughtbox/presentation/screen_login/widgets/custom_textform.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static final storage = GetStorage();

  bool isChecked = false;

  final GlobalKey<FormState> _fomkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _emailController.text="thoughtbox@google.com";
    _passwordController.text="Test@123456";
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final height10 = SizedBox(height: height * .01);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/log.png",
              height: height * .25,
            ),
            height10,
            Text(
              "LOGIN",
              style: headLine,
            ),
            height10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .09),
              child: Form(
                key: _fomkey,
                child: Column(
                  children: [
                    textForm(),
                    height10,
                    passworForm(),
                    height10,
                    CustomButton(
                        onPressed: () async {
                          bool isValid = _fomkey.currentState!.validate();
                          if (isValid) {
                            ('sucess');
                            storage.write("isLogin", true);
                            storage.write("username", _emailController.text);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("pleas Login")));
                          }
                        },
                        title: "Login"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//PASSWORD===============================================================
  CustomTextForm passworForm() {
    return CustomTextForm(
      controller: _passwordController,
      icons: Icons.lock,
      maxline: 1,
      textinputType: TextInputType.visiblePassword,
      title: "Password",
      validator: (value) {
        if (value!.isEmpty) {
          return "Password minimum  1 length";
        } else if (value.length <6) {
          return 'Passsworsd must be 6 length';
        } else {
          return null;
        }
      },
    );
  }

//EMAIL===================================================================
  CustomTextForm textForm() {
    return CustomTextForm(
      controller: _emailController,
      icons: Icons.email,
      maxline: 1,
      textinputType: TextInputType.emailAddress,
      title: "Email",
      validator: (value) {
        if (value == null) {
          return "Required Field";
        } else if (!RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(value)) {
          return "Enter a valid email";
        } else {
          return null;
        }
      },
    );
  }
}
