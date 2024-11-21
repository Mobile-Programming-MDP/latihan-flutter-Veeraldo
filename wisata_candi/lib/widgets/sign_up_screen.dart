import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorText = '';
  bool _obscurePassword = true;
  //TODO: 1 Membuat fungsi _signUp
  void _signUp() {
    String name = _namaController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();
    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      setState(() {
        _errorText =
            'Password harus memiliki minimal 8 karakter, mengandung huruf besar, huruf kecil, angka, dan simbol';
      });
      return;
    } else if (password.isEmpty) {
      _errorText = "";
    }

    print('*** Sign Up berhasil!');
    print('Nama:  $name');
    print('Username:  $username');
    print('Password:  $password');
  }

  //TODO: 2 Membuat fungsi dispose
  void dispose() {
    //TODO: implement dispose
    _namaController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up',
            style: TextStyle(color: Colors.black, fontSize: 50)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _namaController,
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username anda',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person)),
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
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(_obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility)),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: _signUp, child: const Text('Sign Up')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
