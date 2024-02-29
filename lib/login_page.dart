import 'package:flutter/material.dart';
import 'package:tumpuan/dashboard.dart';
import 'package:tumpuan/palette/palette.dart';
import 'package:tumpuan/services/auth_service.dart';
import 'package:tumpuan/widgets/textfields.dart';

class LoginPage extends StatefulWidget {
  final Map? login;

  LoginPage({Key? key, this.login}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              Image(image: AssetImage('assets/images/tumpuan-logo.png')),
              SizedBox(height: 14,),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFields(
                          controller: usernameController,
                          textFieldLabel: 'Username',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFields(
                          controller: passwordController,
                          textFieldLabel: 'Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          // obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
              SizedBox(height: 18,),
              ElevatedButton(
                onPressed: () {
                  doLogin;
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Pallete.blackColor),
                  fixedSize: MaterialStateProperty.all(Size(150, 45)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                child: Text(
                  'Submit', 
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  doLogin() async {
    bool isValid = _formKey.currentState!.validate();
    

    if(isValid){
      final username = usernameController.text;
      final password = passwordController.text;

      print(username + " - " + password);
      // Pastikan kedua field tidak kosong
      if (username.isNotEmpty && password.isNotEmpty) {
        bool isSuccess = await AuthService().login(username: username, password: password);
        print(isSuccess);

        if (isSuccess) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Dashboard(),
          ));
        } else {
          print('Login failed');
        }
      } else {
        print('Please enter username and password');
      }
    }
  }
}
