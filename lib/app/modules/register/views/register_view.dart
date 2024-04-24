import 'package:bacasaku/app/modules/register/controllers/register_controller.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xff161E5F),
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
                    child: Text("SignUp",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff161E5F))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: TextFormField(
                      controller: controller.usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xff161E5F)),
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
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: TextFormField(
                      controller: controller.namalengkapController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xff161E5F)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Masukkan Nama Lengkap',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama lengkap harus diisi';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: TextFormField(
                      controller: controller.alamatController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xff161E5F)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Masukkan Alamat',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Alamat harus diisi';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: TextFormField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xff161E5F)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Masukkan Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email harus diisi';
                        }
                        // Jika ingin memeriksa apakah email valid, Anda dapat menggunakan fungsi RegExp
                        // Contoh:
                        // if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        //   return 'Masukkan email yang valid';
                        // }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: TextFormField(
                      controller: controller.passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xff161E5F)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Masukkan Password',
                      ),
                      obscureText:
                          true, // Agar teks tersembunyi saat dimasukkan
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
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff161E5F),
                        padding: const EdgeInsets.symmetric(vertical: 15)),
                    onPressed: () {
                      controller.register();
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  width: 100,
                  height: 2,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Sudah Punya akun?"),
                    GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: const Text("Sign In",
                            style: TextStyle(color: Colors.blue))),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
