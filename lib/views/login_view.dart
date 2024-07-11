import 'package:flutter/material.dart';
import 'package:task_2/widgets/textfield.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  var height, width;
  bool isChecked = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                width: width,
                height: height * 0.30,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: height * 0.70,
                width: width,
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'login',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CustomTextField(
                          onchanged: (data) {},
                          icon: Icon(Icons.person),
                          hinttext: 'user name',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                          onchanged: (data) {},
                          icon: Icon(Icons.lock),
                          hinttext: 'password',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('new to quiz App?'),
                            Text(
                              '  register',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).pushNamed('home');
                            }
                          },
                          child: const Text('login'),
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            child:
                                Image.asset('assets/images/fingerprint.jpg')),
                        const Text(
                          'use touch ID',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: isChecked, onChanged: (bool? value) {}),
                            Text('remember me'),
                            Text(
                              '                       Forget password?',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
