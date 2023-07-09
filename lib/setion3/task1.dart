import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:RegisterScreen ());
  }


}
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? Key}) : super(key:Key) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 20),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.abc),
                  labelText: " First Name"
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.abc),
                  labelText: " Last Name"
              ),
            ),
            const SizedBox(height: 15),


            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone_callback),
                  labelText: "Phone Number"
              ),
            ),
            const SizedBox(height: 15),



            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email' ,
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password"
              ),
            ),
            const SizedBox(height: 15),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Confirm password"
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius .circular(15),
                ),
                onPressed: (){},
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                onPressed: (){},
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
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
