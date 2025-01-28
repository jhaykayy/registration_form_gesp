import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(labelText: "First Name"),
            ),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: "Last Name"),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email Address"),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isRegistered = !isRegistered;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: isRegistered ? Colors.green : Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                    isRegistered ? "Registration Successful" : "Register me",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    ),
                ),
                
              ),
              
            ),
            
          ],
        ),
      ),
    );
  }
}
