import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
   
  const AccountScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: const Center(
        child: Text(
          'Account',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}