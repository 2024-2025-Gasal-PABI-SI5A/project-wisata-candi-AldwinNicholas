import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  //TODO: 1. deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '',
  bool _isSignIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. pasang appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //TODO: 3. pasang body
      body: Center(
        child: Form(
          child: Column(
            //TODO: 4. atur mainaxisalignment dan crossaxisalignment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //TODO: 5. buat textformfield untuk nama pengguna
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Nama pengguna',
                hintText: 'Masukkan nama pengguna',
                border: OutlineInputBorder(),
              ),
            ),
            //TODO: 6. buat textformfield untuk kata sandi
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Kata sandi',
                hintText: 'Masukkan kata sandi',
                border: const OutlineInputBorder(),
                errorText: _errorText.isNotEmpty ? _errorText : null,
                suffixIcon: IconButton(onPressed: (){}, 
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
                ),
                ),
                obscureText: _obscurePassword,
              ),
            //TODO: 7. buat elevatedbutton untuk sign in
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: const Text('Sign In'),
            ),
            //TODO: 8. pasang textbutton untuk signup
            const SizedBox(height: 10,),
            TextButton(onPressed: () {}, child: Text('Belum punya akun? Daftar di sini.'),
            ),
          ],
        )
        ),
      ),
    );
  }
}