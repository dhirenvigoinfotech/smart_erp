import 'package:flutter/material.dart';
import 'package:smart_erp/Screens/main_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height: 40),

              Image.asset('images/login_image.jpeg',width: 200,height: 200,),

                const Text('Smart ERP',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.business),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    labelText: 'Partner Code'),
              ),

              const SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    labelText: 'User ID'),
              ),

              const SizedBox(height: 20),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password) ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                    labelText:'Password'),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  fixedSize: MaterialStateProperty.all(Size(130, 50))
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MainScreen()));
                },
                child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 18)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
