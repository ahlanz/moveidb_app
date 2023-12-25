import 'package:flutter/material.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/component/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget inputEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 28),
        child: Container(
          decoration: BoxDecoration(
            color: bgcolor2.withOpacity(0.7),
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Your Email",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(Icons.email),
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: bgcolor2.withOpacity(0.7),
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Your Password",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(Icons.lock),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
        ),
      );
    }

    Widget buttonLogin() {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/home'),
        child: MyButton(
          margin: const EdgeInsets.only(top: 20),
          color: buttonColor,
          height: 50,
          width: double.infinity,
          child: Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: primaryTextColorStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Stack(
        children: [
          Image.asset(
            'assets/banner_splash.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Text(
              'Login',
              style: primaryTextColorStyle.copyWith(
                fontSize: 30,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  inputEmail(),
                  inputPassword(),
                  const SizedBox(height: 20),
                  buttonLogin(),
                ],
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
