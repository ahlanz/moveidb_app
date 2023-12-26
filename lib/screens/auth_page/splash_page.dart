import 'package:flutter/material.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/theme/theme_provider.dart';
import 'package:moviedb_app/widget/component/my_button.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    var primaryScheme = Theme.of(context).colorScheme.primary;
    var backgroundScheme = Theme.of(context).colorScheme.background;
    Widget description() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Info Film',
              style: bannerTextStyle.copyWith(
                fontSize: 35,
                color: primaryScheme,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              'More Trending Movies',
              style: primaryTextColorStyle.copyWith(
                fontSize: 30,
                color: primaryScheme,
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
                color: primaryScheme,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: MyButton(
                color: buttonColor,
                margin: EdgeInsets.zero,
                height: 50,
                width: double.infinity,
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: primaryTextColorStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semibold,
                    color: primaryScheme,
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
                  onTap: () => Navigator.pushNamed(context, '/register'),
                  child: Text(
                    'Sign Up',
                    style: primaryTextColorStyle.copyWith(
                        fontSize: 12, color: primaryScheme),
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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: IconButton(
                  onPressed: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toogleTheme();
                  },
                  icon: themeProvider.isSwitch == true
                      ? const Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        ),
                ),
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
      backgroundColor: backgroundScheme,
      body: content(),
    );
  }
}
