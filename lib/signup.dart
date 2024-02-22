import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 22, 34),
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 81, 43, 87),
                borderRadius: BorderRadius.circular(35),
              ),
              width: 170,
              height: 55,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //sdsfsfsdffggfghfghg
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
                  "e-mail",
                  controller: email,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 15,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "e-mail",
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
                  "confirm password",
                  controller: confirmPassword,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 15,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "confirm password",
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
            height: 25,
          ),
          //sdsdfsfdsdsdfsdwsdfsdfs
          Align(
            alignment: Alignment.center,
            child: InkWell(
              borderRadius: BorderRadius.circular(35),
              onTap: () async {
                if (email.text != "" &&
                    username.text != "" &&
                    password.text != "" &&
                    confirmPassword.text != "") {
                  if (password.text == confirmPassword.text) {
                    List auth = await CosmosFirebase.register(
                      email.text,
                      password.text,
                      [username.text, email.text, password.text],
                    );
                    print(auth);
                  }
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 81, 43, 87),
                  borderRadius: BorderRadius.circular(35),
                ),
                width: 120,
                height: 35,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
