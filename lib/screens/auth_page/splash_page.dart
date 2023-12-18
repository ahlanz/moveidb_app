import 'package:flutter/material.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/component/my_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget description() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Info Film',
              style: bannerTextStyle.copyWith(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              'More Trending Movies',
              style: primaryTextColorStyle.copyWith(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              'Get Ready to dive into the greatest\nstories in TV & Film',
              textAlign: TextAlign.center,
              style: primaryTextColorStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: MyButton(
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
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have account ?',
                  style: primaryTextColorStyle.copyWith(
                    fontSize: 12,
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: primaryTextColorStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/banner_splash.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      bgcolor1.withOpacity(1), // Adjust opacity as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Description
          description(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      body: content(),
    );
  }
}
