import 'package:flutter/material.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/component/my_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget inputEmail() {
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
            decoration: InputDecoration(
              hintStyle: primaryTextColorStyle.copyWith(color: bgcolor1),
              hintText: "Your Email",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(
                Icons.email,
                color: bgcolor1,
              ),
              border: InputBorder.none,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
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
            decoration: InputDecoration(
              hintStyle: primaryTextColorStyle.copyWith(color: bgcolor1),
              hintText: "Your Password",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: bgcolor1,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
          ),
        ),
      );
    }

    Widget inputUsername() {
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
            decoration: InputDecoration(
              hintStyle: primaryTextColorStyle.copyWith(color: bgcolor1),
              hintText: "Masukan Username",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Icon(
                Icons.account_circle_rounded,
                color: bgcolor1,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
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
            'Daftar',
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
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Daftar Akun',
                  style: primaryTextColorStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  inputUsername(),
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
