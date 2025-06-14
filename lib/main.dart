 import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/verifications': (context) => VerificationsScreen(),
        '/resetPassword': (context) => ResetPasswordScreen(),
        '/carDetail': (context) => CarDetailScreen(),
      },
    );
  }
}

// ----- واجهة تسجيل الدخول -----
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Markabati")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Welcome back!", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(hintText: "Email")),
            TextField(obscureText: true, decoration: InputDecoration(hintText: "Password")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/verifications'),
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/resetPassword'),
              child: Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}

// ----- واجهة التحقق -----
class VerificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verification")),
      body: Center(
        child: Column(
          children: [
            Text("Enter the 4-digit code sent to your email"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) => SizedBox(
                width: 50,
                child: TextField(textAlign: TextAlign.center),
              )),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/carDetail'),
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}

// ----- واجهة إعادة تعيين كلمة السر -----
class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset Password")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(hintText: "New Password")),
            TextField(decoration: InputDecoration(hintText: "Confirm Password")),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}

// ----- واجهة تفاصيل السيارة -----
class CarDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Details")),
      body: Column(
        children: [
          Image.network("https://via.placeholder.com/300x200", height: 200),
          Text("Tesla Model S", style: TextStyle(fontSize: 24)),
          Text("\$50,000", style: TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: () {},
            child: Text("Book Now"),
          ),
        ],
      ),
    );
  }
}
