import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_dokter/pages/buy_obat.dart';
import 'package:konsultasi_dokter/pages/message_list.dart';
import 'package:konsultasi_dokter/theme.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF8F9FE),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/doctor.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alice Semesta',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Doctor',
                                style: subTitleTextStyle,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffFF8A8A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuyObat()),
                                );
                              },
                              child: Text(
                                'End Chat',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MessageList(),
              MessageList(),
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      height: 55,
                      color: Color(0xffffffff),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'Type Message ...'),
                        maxLength: 10,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 30,
                      height: 30,
                      color: Color(0xff4B7BF9),
                      child: GestureDetector(
                        onTap: () {
                          print('click on edit');
                        },
                        child: Image.asset('assets/send.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
