import 'package:companion_rebuild/features/auth/controller/auth_controller.dart';
import 'package:companion_rebuild/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// File Info:
// This displays the user main login screen gives user the sign in methods (Google, Facebook, Phone, Email)
//Provider is used
//The code logic is written in 'lib/domain/firebase_auth_methods'(subject to change)
class LoginMain extends ConsumerWidget {
  const LoginMain({super.key});
  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    //SignUp Button Style
    final ButtonStyle signUpButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: appWhiteColor,
      foregroundColor: Colors.transparent,
      minimumSize: Size(size.width / 1.29, size.height / 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      elevation: 0,
    );
    //Google, Facebook, Phone Login Style
    final ButtonStyle otherButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.transparent,
      alignment: Alignment.centerLeft,
      backgroundColor: Colors.transparent,
      minimumSize: Size(size.width / 1.29, size.height / 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      side: const BorderSide(
        color: Colors.white,
        width: 2,
      ),
    );
        //Start of UI
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              backgroundColor: appBackgroundColor,
              body: Center(
                child: SizedBox(
                  height: size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: size.width / 5,
                          child: Image.asset(
                              'assets/pictures/myCompanion_icon_round.png')),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      const Text('Get all your notes',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const Text('Free on Companion',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Text('A LightHeads Product',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      SizedBox(
                        width: size.width * 0.85,
                        child: ZoomTapAnimation(
                          child: TextButton(
                              style: otherButtonStyle,
                              // icon: LineIcon.googlePlus(
                              //   color: appWhiteColor,
                              // ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Continue with ',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: appWhiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              onPressed: () => signInWithGoogle(context, ref)),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      SizedBox(
                        width: size.width * 0.85,
                        child: ZoomTapAnimation(
                          child: ElevatedButton(
                            style: signUpButtonStyle,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                const Text(
                                  'Sign up for LightHeads Account',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, '/emailpage');
                              Routemaster.of(context).push('/emailpage');
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      ZoomTapAnimation(
                        child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.transparent,
                            ),
                            onPressed: () {
                              Routemaster.of(context).push('/login');
                            },
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
