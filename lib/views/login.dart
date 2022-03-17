import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpg_cast/views/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //* Variavel para mostrar a senha
  bool showPassword = true;

  //*Controladores do texto
  TextEditingController emailController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  //* cor primaria
  Color primaryColor = Color.fromARGB(255, 255, 111, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 3,
            child: Image(
              image: AssetImage('assets/images/icon.png'),
              //height: MediaQuery.of(context).size.height * 0.35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 37, 39, 73),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text(
                          'RPG Cast',
                          style: TextStyle(
                            fontFamily: 'Enchanted',
                            fontSize: 40,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 253, 110, 0),
                          ),
                        ),
                      ),

                      //* Campo de Usuario
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),

                        //* Parametros do TextField
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          cursorColor: primaryColor,
                          style: TextStyle(
                            fontSize: 17,
                            color: primaryColor,
                          ),

                          //* Decoração do TextField
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: const Icon(
                              Icons.email,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //* Campo de senha
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),

                        //* Parametros do TextField
                        child: TextField(
                          controller: passwdController,
                          obscureText: showPassword,
                          cursorColor: primaryColor,
                          style: TextStyle(
                            fontSize: 17,
                            color: primaryColor,
                          ),

                          //* Decoração do TextField
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            prefixIcon: const Icon(
                              Icons.password,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPassword
                                      ? showPassword = false
                                      : showPassword = true;
                                });
                              },
                              icon: Icon(showPassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 238, 103, 0),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                emailController.clear();
                                passwdController.clear();
                              },
                            );
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                              fontFamily: "Enchanted",
                              fontSize: 35,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              style: const ButtonStyle(
                                alignment: Alignment.centerLeft,
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/forgotPassword');
                              },
                              child: const Text('Esqueci a senha'),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            TextButton(
                              style: const ButtonStyle(
                                alignment: Alignment.centerRight,
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/register');
                              },
                              child: const Text('Cadastrar'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
