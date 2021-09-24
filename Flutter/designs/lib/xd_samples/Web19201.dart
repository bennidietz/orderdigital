import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Web19201 extends StatelessWidget {
  Web19201({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 122.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff172154),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 209.7, start: 72.1),
            Pin(size: 86.0, start: 18.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: -0.4),
                        Pin(start: 0.0, end: -0.4),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.4),
                              Pin(start: -60.6, end: -47.9),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: const AssetImage(''),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_zvp8i,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_lnh2ae,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 102.0, end: 27.0),
            Pin(size: 98.0, start: 12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 144.0, end: 161.0),
            Pin(size: 57.0, start: 33.0),
            child: Text(
              'Max\nMustermann',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 24,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 354.0, start: 0.0),
            Pin(start: 120.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff172154),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 220.0, start: 85.0),
            Pin(size: 29.0, middle: 0.2835),
            child: Text(
              'Ausfahrtskontrolle',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 149.0, start: 85.0),
            Pin(size: 29.0, middle: 0.2245),
            child: Text(
              'Fahrercheck',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 25,
                color: const Color(0xb3ffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 183.0, start: 83.0),
            Pin(size: 29.0, middle: 0.3425),
            child: Text(
              'Fahrzeugcheck',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 25,
                color: const Color(0xb3ffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, start: 35.0),
            Pin(size: 25.0, middle: 0.2844),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zvp8i =
    '<svg viewBox="0.0 0.0 210.1 86.4" ><path transform="translate(0.0, 226.0)" d="M 0 -139.5946350097656 L 210.1323394775391 -139.5946350097656 L 210.1323394775391 -226 L 0 -226 L 0 -139.5946350097656 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lnh2ae =
    '<svg viewBox="0.0 0.0 209.7 86.0" ><path transform="translate(0.0, 226.0)" d="M 0 -226 L 209.7235107421875 -226 L 209.7235107421875 -139.9752807617188 L 0 -139.9752807617188 L 0 -226 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
