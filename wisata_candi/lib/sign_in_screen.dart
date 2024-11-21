import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Sign In',
            style: TextStyle(color: Colors.black, fontSize: 50),
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username anda',
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: const OutlineInputBorder(),
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.password)),
                  ),
                  obscureText: _obscurePassword,
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
                const SizedBox(height: 10),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Belum punya akun? ',
                    style:
                        const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Daftar di sini',
                          style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: 16),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                    ],
                  ),
                ]))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
