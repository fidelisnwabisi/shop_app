import 'package:flutter/material.dart';
import 'package:shop_app/components/no_account_text.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/size_config.dart';
import 'sign_form.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign in with your Email and Password \nor continue with Social Media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: 'assets/icons/google-icon.svg',
                        press: () {},
                      ),
                      SocialCard(
                        icon: 'assets/icons/facebook-2.svg',
                        press: () {},
                      ),
                      SocialCard(
                        icon: 'assets/icons/twitter.svg',
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Sign In')),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
//         children: [
//           const Text('Sign in via the magic link with your email below'),
//           const SizedBox(height: 18),
//           TextFormField(
//             controller: _emailController,
//             decoration: const InputDecoration(labelText: 'Email'),
//           ),
//           const SizedBox(height: 18),
//           DefaultButton(
//             press: () {
//               _isLoading ? null : _signIn;
//             },
//             text: _isLoading ? 'Loading' : 'Send Magic Link',
//           ),
//           // ElevatedButton(
//           //   onPressed: _isLoading ? null : _signIn,
//           //   child: Text(_isLoading ? 'Loading' : 'Send Magic Link'),
//           // ),
//         ],
//       ),
//     );
//   }
// }
