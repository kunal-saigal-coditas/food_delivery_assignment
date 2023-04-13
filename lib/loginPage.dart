import 'package:flutter/material.dart';
import 'package:food_delivery/homePage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0XFF00C795).withOpacity(0.85),
              const Color(0XFF00C795).withOpacity(0.68)
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 25),
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "Welcome Back!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        const SizedBox(height: 150),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 22, horizontal: 10),
                            fillColor: Colors.white,
                            labelText: "Email",
                            labelStyle: TextStyle(fontSize: 20),
                            hintText: "Enter Email",
                          ),
                        ),
                        const SizedBox(height: 20),
                        ValueListenableBuilder(
                          valueListenable: toggle,
                          builder: (context, value, child) {
                            return TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 22, horizontal: 10),
                                labelText: "Password",
                                labelStyle: TextStyle(fontSize: 20),
                                hintText: "Enter Password",
                                suffix: InkWell(
                                  onTap: () {
                                    toggle.value = (!toggle.value);
                                  },
                                  child: Icon(toggle.value
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility),
                                ),
                              ),
                              obscureText: toggle.value,
                            );
                          },
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            style: ButtonStyle(
                              // padding: MaterialStateProperty.all(),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0XFF00C795)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: const Text(
                              "SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          "Sign in with ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/images/pic1.png"),
                            const Text(
                              " or ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Image.asset("assets/images/pic2.png"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
