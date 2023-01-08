import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreen extends StatefulWidget {
   
  const AccountScreen({Key? key}) : super(key: key);

  

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _portController = TextEditingController(text: "8069");
  final _loginController = TextEditingController(text: "admin");
  final _passwordController = TextEditingController(text: "admin");
  final _urlController = TextEditingController(text: "https://demo-odoo.marlonfalcon.com");
  

  Future signIn() async {
      await Future.delayed(const Duration(seconds: 2));
      print('Login: ${_loginController.text}');
      print('Password: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale);

    Locale _locale;
    void setLocale(Locale value) {
      // ---
      print("=>");
      print(value);
      // ---
      setState(() {
                _locale = value;
            });
    }


    // print save from Localizations
    // if (AppLocalizations.of(context) != null) {
    //    print(AppLocalizations.of(context)!.save);
    // } else {
    //   print('AppLocalizations.of(context) is null');
    // }

    return  Scaffold( 
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.account),
      ),
      body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                // Language
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: DropdownButtonFormField(
                      icon: const Icon(Icons.arrow_downward),
                      decoration: const InputDecoration(
                        border:  InputBorder.none,
                        hintText: 'Select Language',
                        prefixIcon: Icon(Icons.language),
                      ),
                      value: 'es',
                      
                      items: const [
                        DropdownMenuItem(
                          value: 'en',
                          child: Text('English'),
                        ),
                        DropdownMenuItem(
                          value: 'es',
                          child: Text('Spanish'),
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        // Change language Localization
                        // AppLocalizations.load(Locale(value));
                        setLocale(Locale.fromSubtags(languageCode: value!));
                         
                      },
                      ),
                ),

                const SizedBox(height: 25),


                // Language
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: DropdownButtonFormField(
                      icon: const Icon(Icons.arrow_downward),
                      decoration: const InputDecoration(
                        border:  InputBorder.none,
                        hintText: 'Sistem',
                        prefixIcon: Icon(Icons.laptop),
                      ),
                      value: '16',
                      
                      items: const [
                        DropdownMenuItem(
                          value: '16',
                          child: Text('Odoo 16'),
                        ),
                        DropdownMenuItem(
                          value: '15',
                          child: Text('Odoo 15'),
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        // formValues['role'] = value ?? 'Admin';

                        
                      },
                      ),
                ),

                const SizedBox(height: 25),
                


                // URl
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


                // Login
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


                // Port
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
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.save,
                        style: const TextStyle(
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