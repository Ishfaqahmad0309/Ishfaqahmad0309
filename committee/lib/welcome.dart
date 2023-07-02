import 'package:flutter/material.dart';

class CommitteeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Committee App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/user_registration': (context) => UserRegistrationScreen(),
        '/committee_creation': (context) => CommitteeCreationScreen(),
        '/committee_member_login': (context) => CommitteeMemberLoginScreen(),
        '/admin': (context) => AdminScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Committee App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user_registration');
              },
              child: Text('User Registration'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/committee_creation');
              },
              child: Text('Create Committee'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/committee_member_login');
              },
              child: Text('Committee Member Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin');
              },
              child: Text('Admin'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Registration Form'),
            // Add form fields for user registration (name, phone number, email)
          ],
        ),
      ),
    );
  }
}

class CommitteeCreationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Committee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Committee Creation Form'),
            // Add form fields for committee creation (amount, duration, members)
          ],
        ),
      ),
    );
  }
}

class CommitteeMemberLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Committee Member Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Committee Member Login Form'),
            // Add form fields for committee member login (email, password)
          ],
        ),
      ),
    );
  }
}

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Admin Dashboard'),
            // Add admin functionalities and UI components
          ],
        ),
      ),
    );
  }
}
