import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_dokter/pages/message.dart';
import 'package:konsultasi_dokter/theme.dart';

class BuyObat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/pict.png'),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      'Focused Pill',
                      style: titleTextStyle,
                    ),
                    SizedBox(width: 147),
                    Text(
                      '\$20',
                      style: titleTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Vitamin C',
                    style: subTitleTextStyle,
                  ),
                  SizedBox(width: 187),
                  Text(
                    '/Bottle',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Description',
                    style: titleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Vitamin C is a type of vitamin that dissolves \nin air and has an important role in warding \noff various diseases.',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Ingrendients',
                    style: titleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Item_one.png',
                    width: 186,
                    height: 86,
                  ),
                  Image.asset(
                    'assets/item_two.png',
                    width: 179,
                    height: 86,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4B7BF9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy this medicine',
                      style: GoogleFonts.poppins(
                          color: Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Message()),
                    );
                  },
                  child: Image.asset(
                    'assets/pict_chat.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
