import 'package:flutter/material.dart';

import '../socialmedia.dart';
import 'register.dart';

class Task6LoginPage extends StatefulWidget {
  const Task6LoginPage({super.key});

  @override
  State<Task6LoginPage> createState() => _Task6LoginPageState();
}

class _Task6LoginPageState extends State<Task6LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SocialMedia()),
    );
  }

  void _goToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Task6RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('TASK 6 ARACENA'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                key: const Key('task6-username'),
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                key: const Key('task6-password'),
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                key: const Key('task6-login-button'),
                onPressed: _login,
                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _goToRegister,
                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
