import 'package:flutter/material.dart';
import 'login.dart'; // Import the login.dart page

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _validateFields() {
    if (_usernameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter a username.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    } else if (_emailController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter an email address.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    } else if (_passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter a password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    } else if (_passwordController.text != _confirmPasswordController.text) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Password and Confirm Password do not match.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Register Page'), // Set app bar title
    ),
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('image/SUNSET.jpg'), // Set your background image here
    fit: BoxFit.cover,
    ),
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
    controller: _usernameController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Username',
    icon: Icon(Icons.people),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
    controller: _emailController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
    icon: Icon(Icons.email),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
    controller: _passwordController,

        obscureText: true, // Set password field to obscure text
        decoration: const InputDecoration(
        border: OutlineInputBorder(),
      labelText: 'Password',
      icon: Icon(Icons.lock),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
    controller: _confirmPasswordController,
    obscureText: true, // Set confirm password field to obscure text
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Confirm Password',
    icon: Icon(Icons.lock),
    ),
    ),
    ),
    ElevatedButton(
    onPressed: () {
    if (_validateFields()) {
// If all fields are valid, perform registration logic here
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text('Success'),
    content: Text('Registration successful!'),
    actions: [
    TextButton(
    onPressed: () {
    Navigator.pop(context);
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => login(),
    ),
    );
    },
    child: Text('OK'),
    ),
    ],
    );
    },
    );
    }
    },
    child: Text('Register'),
    ),
    TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => login(),
    ),
    );
    },
    child: Text('Already have an account? Login'),
    ),
    ],
    ),
    ),
    ),
    );
  }
}