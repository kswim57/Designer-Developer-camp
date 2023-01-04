import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/stot_logo_simple.png',
                  width: 200,
                  height: 150,
                )
              ],
            ),
            EmailInput(),
            PasswordInput(),
            SizedBox(height: 30.0,),
            LoginButton(),
            SizedBox(height: 30.0,),
            RegisterButton(),
          ],
        ),
      );
  }
}

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      padding: EdgeInsets.all(10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'email',
          helperText: '',
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'password',
          helperText: '',
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () async {
        },
        child: Text(
          'Login',
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/register');
        },
        child: Text(
          'Register by email',
        ));
  }
}