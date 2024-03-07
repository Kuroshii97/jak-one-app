
import 'package:flutter/material.dart';
import 'package:jak_one_app_replacement/home_screen.dart';
import 'package:jak_one_app_replacement/util/color_constant.dart';
import 'package:jak_one_app_replacement/util/gradient_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Card(
                      elevation: 3,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/indonesia_icon.png',
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'asset/english_icon.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Card(
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/jak-card-cc-icon.png',
                              width: 10,
                              height: 10,
                            ),
                            Image.asset(
                              'asset/Jakcard-logo.png',
                              width: 25,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 275,
                        height: 286,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(75),
                          ),
                        ),
                        child: Image.asset(
                          'asset/login_screen_image.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Explore Jakarta with Jakarta Tourist Pass',
                        style: TextStyle(
                            foreground: Paint()
                              ..shader = GradientConstant.jakOneLinearGradient),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: _navigateToHomeScreen,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorConstant.jakOneDarkOrange,
                                ColorConstant.jakOneLighterOrange
                              ],
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Text(
                            'Continue as a Guest',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: _navigateToHomeScreen,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 1,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorConstant.jakOneLightestOrange,
                                ColorConstant.jakOneDarkOrange,
                              ],
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 5,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(
                                fontSize: 24,
                                color: ColorConstant.jakOneDarkOrange,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset('asset/floating_action_button.png'),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHomeScreen() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
        (Route<dynamic> route) => false);
  }
}
