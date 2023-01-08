import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
   
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _portController = TextEditingController();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _urlController = TextEditingController();

  Future signIn() async {
      await Future.delayed(const Duration(seconds: 2));
      print('Login: ${_loginController.text}');
      print('Password: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                // Logo
                const Icon(Icons.person, size: 100, 
                     color: Colors.deepPurple),  
                const SizedBox(height: 75),
            
              

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          controller: _urlController,
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'https://demo-odoo.marlonfalcon.com',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          controller: _loginController,
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'admin',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          controller: _portController,
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: '8069',
                          prefixIcon: Icon(Icons.connected_tv_sharp),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                    
                // Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                    
                // sign_in_button
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    onTap:signIn,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        ),
                      child: const Center(
                        child:  Text('Sign in',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                     
                // not a member ? sign up
                
                      
                ],),
            ),
          ),
        ),  
    );

  }
}