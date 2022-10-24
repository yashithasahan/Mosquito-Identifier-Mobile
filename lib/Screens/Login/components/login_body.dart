import 'package:flutter/material.dart';
import 'package:mosquito_idnetifer/Screens/Home/home_screen.dart';
import 'package:mosquito_idnetifer/Widgets/custom_textfield.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/login_combine.png",
                width: size.width * 1,
              )),
          // Positioned(
          //     bottom: 0,
          //     right: 0,
          //     child: Image.asset(
          //       "assets/images/login_bottom.png",
          //       width: size.width * 0.7,
          //     )),
          const Positioned(
              top: 65,
              left: 15,
              child: Text(
                "Hello!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                userIcon: const Icon(Icons.account_circle_rounded),
                myController: _emailController,
                userHintText: "User Name",
                isPassword: false,
                errorTextEmpty: "Please Enter an Username",
              ),
              CustomTextField(
                userIcon: const Icon(Icons.lock),
                myController: _passwordController,
                userHintText: "Password",
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 20, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: const Color(0xFF0E86D4)),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.white),
                          onPressed: () {
                            
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomeScreen()));
                          },
                          
                        ))
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don`t have an account ?  ",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  Text("Register",
                      style: TextStyle(
                        color: Color(0xFF0E86D4),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

