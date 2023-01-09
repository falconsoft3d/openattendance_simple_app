import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold( 
      appBar: AppBar(
        title: const Text("OpenAttendanceSimple"),
        // Color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 32),
                child: Text(
                  AppLocalizations.of(context)!.welcome,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'NexaRegular',
                    fontSize: screenWidth / 20,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Admin",
                  style: TextStyle(
                    fontFamily: 'NexaBold',
                    fontSize: screenWidth / 18,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 32),
                child: Text(
                  AppLocalizations.of(context)!.today_status,
                  style: TextStyle(
                    fontFamily: 'NexaRegular',
                    fontSize: screenWidth / 18,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 32, bottom: 32),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(2,  2), // changes position of shadow
                    ),
                  ],
                   
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children : [
                              Text(AppLocalizations.of(context)!.check_in,
                              style : TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: screenWidth / 20,
                                  color: Colors.black54,
                              ),
                              ),
                              Text("09:30 AM",
                                  style : TextStyle(
                                  fontFamily: 'NexaBold',
                                  fontSize: screenWidth / 18,
                              ),
                              
                              ),
                          ]
                        )
                        ),
                        Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children : [
                              Text(AppLocalizations.of(context)!.check_out,
                              style : TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: screenWidth / 20,
                                  color: Colors.black54,
                              ),
                                
                              ),
                              Text("--/--",
                              style : TextStyle(
                                  fontFamily: 'NexaBold',
                                  fontSize: screenWidth / 18,
                              ),
                              ),
                          ]
                        )
                        ),
                   ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "11 JAN 2023",
                    style : TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: screenWidth / 20,
                                  color: Colors.black54,
                              ),
                  ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: AppLocalizations.of(context)!.total_work_hours,
                      style: TextStyle(
                        fontFamily: 'NexaRegular',
                        fontSize: screenWidth / 20,
                        color: Colors.black54,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " 8 ${AppLocalizations.of(context)!.hours}",
                          style: TextStyle(
                            fontFamily: 'NexaBold',
                            fontSize: screenWidth / 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "20:00:01",
                    style : TextStyle(
                                  fontFamily: 'NexaRegular',
                                  fontSize: screenWidth / 20,
                                  color: Colors.black54,
                              ),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> key = GlobalKey();

                    return SlideAction(
                        text: AppLocalizations.of(context)!.slide_to_out,
                        textStyle: TextStyle(
                          fontFamily: 'NexaRegular',
                          fontSize: screenWidth / 20,
                          color: Colors.white,
                        ),
                        key : key,
                        onSubmit: () {
                          key.currentState!.reset();
                        },
                    );
                  }
                ),
              )
              
          ],
        ),
      ),
    );
  }
}