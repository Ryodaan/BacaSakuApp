import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xff161E5F),
          child: Image.asset("assets/Logo2.png"),
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("SignIn",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff161E5F))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: TextFormField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff161E5F)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Masukkan Username',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username harus diisi';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: TextFormField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff161E5F)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Masukkan Password',
                    ),
                    obscureText: true, // Agar teks tersembunyi saat dimasukkan
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password harus diisi';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 125,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 22, 30, 95))),
            onPressed: () {
              controller.login();
            },
            child: Text("Log In",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 100,
          height: 2,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Belum Punya akun?"),
            GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.REGISTER);
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.blue))),
          ],
        )
      ],
    ));
  }
}
