import 'package:flutter/material.dart';
import 'package:login_screen_ui/components/my_button.dart';
import 'package:login_screen_ui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
LoginPage({super.key});

final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Welcome back you\'ve been missed '),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
              controller: usernameController,
              obscureText: false,
              hintText: 'Username',
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: passwordController,
              obscureText: true,
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forgot Password?'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const MyButton(),
            const SizedBox(
              height: 45,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Or continue with'),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                ))
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Register now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
