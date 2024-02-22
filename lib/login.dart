import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 22, 34),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(90),
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      width: 250,
                      child: Center(
                        child: CosmosTextBox(
                          "user name",
                          controller: username,
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "user name",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      width: 250,
                      child: Center(
                        child: CosmosTextBox(
                          "password",
                          controller: password,
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "password",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(35),
                      onTap: () async {
                        List auth = await CosmosFirebase.login(
                            username.text, password.text);
                        if (auth[0].toString() == "1") {
                          print("Başarılıdır");
                        } else if (auth[0].toString() == "0") {
                          print(auth[1].toString());
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 81, 43, 87),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        width: 250,
                        height: 40,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 290,
                  ),
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(35),
                      onTap: () async {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        width: 130,
                        height: 35,
                        child: const Center(
                          child: Text(
                            "sign up",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 81, 43, 87),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
