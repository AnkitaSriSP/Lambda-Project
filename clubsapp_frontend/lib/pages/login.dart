import 'package:clubsapp/pages/announcements.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClubsApp());
}

class ClubsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Clubs App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    // Add your login logic here
    print('Username: ${_usernameController.text}');
    print('Password: ${_passwordController.text}');

    // Assuming login is always successful for this example
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  void _createAccount() {
    // Add your create account logic here
    print('Create a new account');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(48.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 57, 10, 123),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                child: Text(
                  'CLUBSPACE',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 111, 70, 169),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: _createAccount,
                child: Text('Create a new account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


