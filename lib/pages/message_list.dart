import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_dokter/pages/buy_obat.dart';
import 'package:konsultasi_dokter/theme.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/doctor.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 12),
                Container(
                  width: 207,
                  height: 64,
                  color: Color(0xffffffff),
                  child: Center(
                    child: Text(
                      'Hello, good Morning. Is \nthere anything I can help?',
                      style: subDescTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 207,
                    height: 64,
                    color: Color(0xffE3EBFF),
                    child: Center(
                      child: Text(
                        'Good morning too.',
                        style: subDescTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 207,
                    height: 64,
                    color: Color(0xffE3EBFF),
                    child: Center(
                      child: Text(
                        'Ive been feeling bad \nlately. What should I do?',
                        style: subDescTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      'assets/doctor.png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 207,
                      height: 64,
                      color: Color(0xffffffff),
                      child: Center(
                        child: Text(
                          'I think you need enough \nrest and you need \nvitamins for your body',
                          style: subDescTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  Container(
                    width: 187,
                    height: 170,
                    color: Color(0xffffffff),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/product_pict.png',
                          width: 179,
                          height: 100,
                        ),
                        SizedBox(height: 12),
                        Text(
                          'I suggest you consume\nvitamin C',
                          style: subDescTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 187,
                    height: 38,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4B7BF9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BuyObat()),
                        );
                      },
                      child: Text(
                        'View Product',
                        style: GoogleFonts.poppins(
                            color: Color(0xffffffff),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
