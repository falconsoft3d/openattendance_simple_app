import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ListScreen extends StatelessWidget {
   
  const ListScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.list),
        
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.list,
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}