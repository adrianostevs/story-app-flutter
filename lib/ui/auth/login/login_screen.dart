import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailEditingController = useTextEditingController();
    final passwordEditingController = useTextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 234, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.person,
                    size: 52,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Material(
                  color: Colors.white,
                  type: MaterialType.card,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    child: TextFormField(
                      controller: emailEditingController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.go,
                      onChanged: (v) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 16, right: 16, top: 16, bottom: 16),
                        hintText: 'Email',
                        isDense: true,
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        errorStyle: TextStyle(
                          height: 0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Material(
                  color: Colors.white,
                  type: MaterialType.card,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    child: TextFormField(
                      controller: passwordEditingController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.go,
                      onChanged: (v) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 16, right: 16, top: 16, bottom: 16),
                        hintText: 'Password',
                        isDense: true,
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        errorStyle: TextStyle(
                          height: 0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: HookBuilder(builder: (context) {
                  return MaterialButton(
                    onPressed: emailEditingController.text.isNotEmpty &&
                            passwordEditingController.text.isNotEmpty
                        ? () {
                            print('any');
                          }
                        : null,
                    disabledColor: Colors.grey,
                    color: Colors.blue,
                    elevation: 0,
                    focusElevation: 0,
                    hoverElevation: 0,
                    disabledElevation: 0,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    height: 48,
                    child: _buttonContent(),
                  );
                }),
              ),
              Text.rich(
                TextSpan(
                    text: "Don't have account? ",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: 'Register',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                      const TextSpan(
                        text: ' now',
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonContent() {
    return const Text(
      'Login',
      style: TextStyle(color: Colors.white),
    );
  }
}
