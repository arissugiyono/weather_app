import 'package:flutter/material.dart';
import 'package:weatherapp_test/theme/themes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget locationTitle() {
    return Container(
        margin: EdgeInsets.only(
          top: 53,
        ),
        child: Column(
          children: [
            Text(
              'DKI Jakarta',
              style: whiteTextStyle.copyWith(
                fontSize: 19,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 9.5,
            ),
            Text(
              'Kota Jakarta Barat',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: reguler,
              ),
            )
          ],
        ));
  }

  Widget temperature() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        children: [
          Text(
            '27\u{00B0}',
            style: whiteTextStyle.copyWith(fontSize: 109, fontWeight: light),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Jumat 31 Juli 09:00',
            style: whiteTextStyle.copyWith(
              fontSize: 13,
              fontWeight: reguler,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Cerah Berawan',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: reguler,
            ),
          ),
          Container(
            height: 128,
            width: 128,
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icon_weather.png'))),
          )
        ],
      ),
    );
  }

  Widget wave() {
    return Container(
      height: 135,
      width: 428,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/Group16.png'),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 100,
              left: 64.67,
              bottom: 6,
            ),
            child: Row(
              children: [
                Text(
                  'Hari ini',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  width: 32.16,
                ),
                Text(
                  'Besok',
                  style: greyTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 64.67,
                ),
                width: 40,
                height: 3,
                color: Colors.black,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xff707070),
              ),
            ]),
          )
        ],
      ),
    );
  }

  Widget detail() {
    return Container(
      height: 274,
      width: double.infinity,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(
          left: 64.13,
          right: 47.22,
          bottom: 38,
          top: 41.5,
        ),
        child: Column(
          children: [
            //TODO : CLOCK
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00:00',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '06:00',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '12:00',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '18:00',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 38.07,
            ),
            //TODO : WEATHER ICON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/cloud.png'))),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/sun.png'))),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/sun.png'))),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/sun(1).png'))),
                ),
              ],
            ),
            SizedBox(
              height: 35.14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '25\u{00B0}',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '27\u{00B0}',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '27\u{00B0}',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: reguler,
                  ),
                ),
                Text(
                  '26\u{00B0}',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/background.png',
                ))),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                locationTitle(),
                temperature(),
                wave(),
                detail(),
              ],
            )),
      ),
    );
  }
}
