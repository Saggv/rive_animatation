import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Stack(
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 600),
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.8),
                        Colors.white10
                      ]),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(29),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: RiveAppTheme.shadow.withOpacity(0.3),
                                offset: const Offset(0, 3),
                                blurRadius: 5),
                            BoxShadow(
                                color: RiveAppTheme.shadow.withOpacity(0.3),
                                offset: const Offset(0, 30),
                                blurRadius: 30)
                          ],
                          color: Colors.grey[100]),
                      child: Column(
                        children: [
                          const Text(
                            "Sign In",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 34),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Access to 240+ hours of content. Learn design and code, by building real apps with React and Swift.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: 'Inter',
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          TextField(
                            decoration: authInputStyle(Icons.email),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: 'Inter',
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: authInputStyle(Icons.lock),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFFF77D8E)
                                        .withOpacity(0.5),
                                    blurRadius: 20,
                                    offset: const Offset(0, 10))
                              ],
                            ),
                            child: CupertinoButton(
                                color: const Color(0xFFF77D8E),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_forward_rounded),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                onPressed: () {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(child: Divider()),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'OR',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        color: Colors.black.withOpacity(0.3)),
                                  ),
                                ),
                                const Expanded(child: Divider()),
                              ],
                            ),
                          ),
                          const Text('Sign up with Email, Facebook and Apple'),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape:
                                      const CircleBorder(), // Makes the button circular
                                  padding: const EdgeInsets.all(
                                      10), // Adjusts the padding to control the size of the button
                                  side: BorderSide(
                                      width: 1.0,
                                      color: Colors.grey
                                          .shade600), // Optional: Outlined border
                                ),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape:
                                      const CircleBorder(), // Makes the button circular
                                  padding: const EdgeInsets.all(
                                      10), // Adjusts the padding to control the size of the button
                                  side: BorderSide(
                                      width: 1.0,
                                      color: Colors.grey
                                          .shade600), // Optional: Outlined border
                                ),
                                child: Icon(
                                  Icons.facebook_sharp,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape:
                                      const CircleBorder(), // Makes the button circular
                                  padding: const EdgeInsets.all(
                                      10), // Adjusts the padding to control the size of the button
                                  side: BorderSide(
                                      width: 1.0,
                                      color: Colors.grey
                                          .shade600), // Optional: Outlined border
                                ),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.grey.shade600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: CupertinoButton(
                         color: Colors.red,
                         padding: EdgeInsets.zero,
                         borderRadius: BorderRadius.circular(36 /  2),
                         minSize: 36,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(36 / 2),
                              boxShadow: [
                                BoxShadow(
                                    color: RiveAppTheme.shadow.withOpacity(0.3),
                                    blurRadius: 5,
                                    offset: const Offset(0, 3))
                              ]),
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {}),
                    )
                  )
                ],
              )),
        ),
      ),
    );
  }

  InputDecoration authInputStyle(IconData iconName) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Icon(
          iconName,
          color: const Color.fromARGB(255, 234, 117, 154),
        ),
      ),
      contentPadding: const EdgeInsets.all(15),
    );
  }
}
