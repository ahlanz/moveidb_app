import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviedb_app/provider/popular_movie_provider.dart';
import 'package:moviedb_app/theme.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Text(
            "Login",
            style: primaryTextColorStyle.copyWith(
              fontSize: 28,
              fontWeight: medium,
            ),
          )
        ],
      );
    }

    Widget inputEmail() {
      return Container(
        margin: const EdgeInsets.only(top: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: primaryTextColorStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.4),
                  borderRadius: BorderRadius.circular(4),
                ),
                prefixIcon: Icon(Icons.email),
                labelText: "Your Email",
              ),
            )
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: const EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: primaryTextColorStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.4),
                  borderRadius: BorderRadius.circular(4),
                ),
                prefixIcon: Icon(Icons.password_rounded),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "Your Password",
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonLog() {
      return Container(
        margin: const EdgeInsets.only(top: 64),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the value as needed
          color: primaryColor, // Button background color
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: GoogleFonts.poppins().toString(),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: margin, vertical: 65),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                inputEmail(),
                inputPassword(),
                buttonLog(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
