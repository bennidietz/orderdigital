import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurfacePro31 extends StatelessWidget {
  SurfacePro31({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 1013.0, end: 57.0),
            Pin(size: 518.0, end: 42.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 354.0, start: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff172154),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 220.0, start: 85.0),
            Pin(size: 29.0, middle: 0.1912),
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
            Pin(size: 29.0, start: 116.0),
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
            Pin(size: 29.0, middle: 0.2578),
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
            Pin(size: 25.0, middle: 0.1925),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 161.7, start: 78.6),
            Pin(size: 66.3, start: 30.7),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: -0.3),
                        Pin(start: 0.0, end: -0.3),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.3),
                              Pin(start: -46.7, end: -36.9),
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
                                _svg_af9m2p,
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
                          _svg_u5cqny,
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
            Pin(size: 237.0, middle: 0.3732),
            Pin(size: 230.0, start: 131.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      color: const Color(0xff172154),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 31.0, end: 31.0),
                  Pin(size: 25.0, middle: 0.1805),
                  child: Text(
                    'Check-Häufigkeit',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 21,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 96.0, middle: 0.2908),
                  Pin(size: 48.0, middle: 0.6044),
                  child: Text(
                    '2,1%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 59.6, end: 20.0),
                  Pin(size: 79.2, middle: 0.6161),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_j9sj3i,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 14.0),
                  Pin(size: 24.0, end: 13.0),
                  child:
                      // Adobe XD layer: 'info_black_24dp' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 2.0, end: 2.0),
                        Pin(start: 2.0, end: 2.0),
                        child: SvgPicture.string(
                          _svg_h5cifw,
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
            Pin(size: 237.0, end: 50.0),
            Pin(size: 230.0, start: 131.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      color: const Color(0xff172154),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 31.0, end: 33.0),
                  Pin(size: 25.0, middle: 0.1805),
                  child: Text(
                    'GLS Check Index',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 21,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 112.0, middle: 0.328),
                  Pin(size: 48.0, middle: 0.6044),
                  child: Text(
                    '-0,1%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 60.6, end: 10.2),
                  Pin(size: 59.6, middle: 0.6027),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_ji4u,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 14.0),
                  Pin(size: 24.0, end: 13.0),
                  child:
                      // Adobe XD layer: 'info_black_24dp' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 2.0, end: 2.0),
                        Pin(start: 2.0, end: 2.0),
                        child: SvgPicture.string(
                          _svg_h5cifw,
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
            Pin(size: 237.0, middle: 0.3732),
            Pin(size: 230.0, start: 131.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      color: const Color(0xff172154),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 31.0, end: 31.0),
                  Pin(size: 25.0, middle: 0.1805),
                  child: Text(
                    'Check-Häufigkeit',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 21,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 96.0, middle: 0.2908),
                  Pin(size: 48.0, middle: 0.6044),
                  child: Text(
                    '2,1%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 59.6, end: 20.0),
                  Pin(size: 79.2, middle: 0.6161),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_j9sj3i,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 14.0),
                  Pin(size: 24.0, end: 13.0),
                  child:
                      // Adobe XD layer: 'info_black_24dp' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 2.0, end: 2.0),
                        Pin(start: 2.0, end: 2.0),
                        child: SvgPicture.string(
                          _svg_h5cifw,
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
            Pin(size: 418.8, middle: 0.7051),
            Pin(size: 230.0, start: 131.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      color: const Color(0xff172154),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 276.0, start: 31.0),
                  Pin(size: 25.0, middle: 0.1805),
                  child: Text(
                    'Trend der Check-Häufigkeit',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 21,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 14.0),
                  Pin(size: 24.0, end: 13.0),
                  child:
                      // Adobe XD layer: 'info_black_24dp' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_eterkn,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 2.0, end: 2.0),
                        Pin(start: 2.0, end: 2.0),
                        child: SvgPicture.string(
                          _svg_h5cifw,
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
            Pin(size: 184.0, middle: 0.6624),
            Pin(size: 48.0, start: 40.0),
            child: Text(
              'Tour 1182',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 40,
                color: const Color(0xff172154),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 286.2, middle: 0.6787),
            Pin(size: 66.5, middle: 0.2591),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 89.6, start: 0.0),
                  Pin(size: 16.8, end: 0.0),
                  child: SvgPicture.string(
                    _svg_r35ty,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 196.8, end: 0.0),
                  Pin(start: 0.0, end: 4.4),
                  child: SvgPicture.string(
                    _svg_u62ecj,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 33.0, middle: 0.7456),
            Pin(size: 18.0, middle: 0.3397),
            child: Text(
              '31.5.',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.5449),
            Pin(size: 18.0, middle: 0.3397),
            child: Text(
              '1.5.',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 33.0, middle: 0.6517),
            Pin(size: 18.0, middle: 0.3397),
            child: Text(
              '15.5.',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5445),
            Pin(size: 22.0, middle: 0.3182),
            child: SvgPicture.string(
              _svg_xo0lea,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.6487),
            Pin(size: 51.5, middle: 0.2955),
            child: SvgPicture.string(
              _svg_ro4auc,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.5, middle: 0.7435),
            Pin(size: 74.0, middle: 0.2782),
            child: SvgPicture.string(
              _svg_ydxi1v,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5445),
            Pin(size: 22.0, middle: 0.3182),
            child: SvgPicture.string(
              _svg_xo0lea,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.7775),
            Pin(size: 24.0, middle: 0.2479),
            child:
                // Adobe XD layer: 'chevron_right_black…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_eterkn,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 7.4, middle: 0.5178),
                  Pin(size: 12.0, middle: 0.5),
                  child: SvgPicture.string(
                    _svg_hbk69g,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.5226),
            Pin(size: 24.0, middle: 0.2479),
            child: Transform.rotate(
              angle: 3.1416,
              child:
                  // Adobe XD layer: 'chevron_right_black…' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: SvgPicture.string(
                      _svg_eterkn,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 7.4, middle: 0.5178),
                    Pin(size: 12.0, middle: 0.5),
                    child: SvgPicture.string(
                      _svg_hbk69g,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 153.0, end: 62.0),
            Pin(size: 69.0, middle: 0.4332),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 10.0, start: 14.0),
                  Pin(size: 18.0, start: 0.0),
                  child: Text(
                    'V',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 44.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            color: const Color(0xff172154),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 76.0, start: 18.0),
                        Pin(size: 18.0, middle: 0.5),
                        child: Text(
                          'Zum Trend',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.5, end: 19.2),
                  Pin(size: 19.1, middle: 0.791),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'chart-line-solid' (shape)
                            SvgPicture.string(
                          _svg_hqzb7,
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
            Pin(size: 216.0, middle: 0.8162),
            Pin(size: 69.0, middle: 0.4332),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 10.0, middle: 0.3495),
                  Pin(size: 18.0, start: 0.0),
                  child: Text(
                    'V',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 44.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff172154),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 150.0, start: 10.0),
                  Pin(size: 18.0, middle: 0.7451),
                  child: Text(
                    'Zum Tourenvergleich',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.2, end: 239.0),
            Pin(size: 28.0, middle: 0.4495),
            child:
                // Adobe XD layer: 'compare_arrows_blac…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_r5g98,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 2.0, end: 2.0),
                  Pin(start: 5.0, end: 5.4),
                  child: SvgPicture.string(
                    _svg_dfqnof,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_af9m2p =
    '<svg viewBox="0.0 0.0 162.0 66.6" ><path transform="translate(0.0, 226.0)" d="M 0 -159.3704681396484 L 162.0387725830078 -159.3704681396484 L 162.0387725830078 -226 L 0 -226 L 0 -159.3704681396484 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u5cqny =
    '<svg viewBox="0.0 0.0 161.7 66.3" ><path transform="translate(0.0, 226.0)" d="M 0 -226 L 161.7235107421875 -226 L 161.7235107421875 -159.6640014648438 L 0 -159.6640014648438 L 0 -226 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eterkn =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h5cifw =
    '<svg viewBox="2.0 2.0 20.0 20.0" ><path  d="M 11 7 L 13 7 L 13 9 L 11 9 L 11 7 Z M 11 11 L 13 11 L 13 17 L 11 17 L 11 11 Z M 12 2 C 6.480000019073486 2 2 6.480000019073486 2 12 C 2 17.52000045776367 6.480000019073486 22 12 22 C 17.52000045776367 22 22 17.52000045776367 22 12 C 22 6.479999542236328 17.52000045776367 2 12 2 Z M 12 20 C 7.590000152587891 20 4 16.40999984741211 4 12 C 4 7.590000152587891 7.590000152587891 4 12 4 C 16.40999984741211 4 20 7.590000152587891 20 12 C 20 16.40999984741211 16.40999984741211 20 12 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j9sj3i =
    '<svg viewBox="606.4 223.9 59.6 79.2" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 605.43, 303.1)" d="M 42.97775268554688 1 L 33.58368682861328 8.657147407531738 L 53.96224212646484 25.37940406799316 L 0 25.37940406799316 L 0 36.1882209777832 L 53.96224212646484 36.1882209777832 L 33.58368682861328 52.91048049926758 L 42.97775268554688 60.5676155090332 L 79.19125366210938 30.7838134765625 L 42.97775268554688 1 Z" fill="#1f800d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ji4u =
    '<svg viewBox="615.2 233.7 60.6 59.6" ><path transform="translate(615.17, 232.72)" d="M 32.91035461425781 1 L 25.71681785583496 8.657147407531738 L 41.32176208496094 25.37940406799316 L 0 25.37940406799316 L 0 36.1882209777832 L 41.32176208496094 36.1882209777832 L 25.71681785583496 52.91048049926758 L 32.91035461425781 60.5676155090332 L 60.64096069335938 30.7838134765625 L 32.91035461425781 1 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r35ty =
    '<svg viewBox="783.1 306.2 89.6 16.8" ><path transform="translate(-3094.0, 476.98)" d="M 3877.068115234375 -153.9951934814453 L 3901.338623046875 -170.8175048828125 L 3918.24853515625 -164.3446350097656 L 3949.259033203125 -170.8175048828125 L 3966.654296875 -158.5643463134766" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u62ecj =
    '<svg viewBox="872.4 256.5 196.8 62.1" ><path transform="translate(-3094.0, 452.0)" d="M 3966.415771484375 -133.3760375976562 L 3983.248291015625 -140.1489562988281 L 4009.52197265625 -151.9759826660156 L 4033.724365234375 -161.7731018066406 L 4072.9169921875 -151.9759826660156 L 4092.054443359375 -169.8345642089844 L 4110.86767578125 -181.9533386230469 L 4125.24365234375 -195.5181884765625 L 4146.658203125 -195.5181884765625 L 4163.2265625 -181.9533386230469" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xo0lea =
    '<svg viewBox="783.5 298.5 1.0 22.0" ><path transform="translate(783.5, 298.5)" d="M 0 0 L 0 22" fill="none" stroke="#ffffff" stroke-width="2" stroke-dasharray="0 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ro4auc =
    '<svg viewBox="933.5 268.5 1.0 51.5" ><path transform="translate(933.5, 268.5)" d="M 0 0 L 0 51.5" fill="none" stroke="#ffffff" stroke-width="2" stroke-dasharray="0 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ydxi1v =
    '<svg viewBox="1069.5 246.5 1.5 74.0" ><path transform="translate(1069.5, 246.5)" d="M 0 0 L 1.5 74" fill="none" stroke="#ffffff" stroke-width="2" stroke-dasharray="0 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hbk69g =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path  d="M 10 6 L 8.590000152587891 7.409999847412109 L 13.17000007629395 12 L 8.590000152587891 16.59000015258789 L 10 18 L 16 12 L 10 6 Z" fill="#fcbf00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hqzb7 =
    '<svg viewBox="0.0 0.0 25.5 19.1" ><path transform="translate(0.0, -64.0)" d="M 24.68255043029785 79.92421722412109 L 3.184844970703125 79.92421722412109 L 3.184844970703125 64.79621887207031 C 3.184844970703125 64.35631561279297 2.828540802001953 63.99999618530273 2.388633728027344 63.99999618530273 L 0.7962112426757812 63.99999618530273 C 0.3563045263290405 63.99999618530273 0 64.35631561279297 0 64.79621887207031 L 0 81.51664733886719 C 0 82.39595794677734 0.7131068110466003 83.10906982421875 1.592422485351562 83.10906982421875 L 24.68255043029785 83.10906982421875 C 25.12245750427246 83.10906982421875 25.478759765625 82.75275421142578 25.478759765625 82.31285095214844 L 25.478759765625 80.72043609619141 C 25.478759765625 80.28053283691406 25.12245750427246 79.92421722412109 24.68255043029785 79.92421722412109 Z M 23.09012985229492 65.59242248535156 L 17.2150821685791 65.59242248535156 C 16.15114593505859 65.59242248535156 15.61818218231201 66.87880706787109 16.37060165405273 67.6312255859375 L 17.9829273223877 69.24355316162109 L 14.33180332183838 72.89517211914062 L 10.68067836761475 69.24404907226562 C 10.05863761901855 68.62200164794922 9.050434112548828 68.62200164794922 8.428892135620117 69.24404907226562 L 5.010657787322998 72.66228485107422 C 4.699636936187744 72.97329711914062 4.699636936187744 73.47740173339844 5.010657787322998 73.78842163085938 L 6.136301517486572 74.91405487060547 C 6.447320938110352 75.22508239746094 6.951422691345215 75.22508239746094 7.262442588806152 74.91405487060547 L 9.554534912109375 72.62147521972656 L 13.20566272735596 76.27260589599609 C 13.82770252227783 76.89464569091797 14.83590412139893 76.89464569091797 15.45744705200195 76.27260589599609 L 20.23471450805664 71.49533081054688 L 21.84704208374023 73.10765838623047 C 22.59946060180664 73.86007690429688 23.88583946228027 73.32711791992188 23.88583946228027 72.26318359375 L 23.88583946228027 66.38863372802734 C 23.88633918762207 65.94873809814453 23.53003311157227 65.59242248535156 23.09012985229492 65.59242248535156 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r5g98 =
    '<svg viewBox="0.0 0.0 29.2 28.0" ><path  d="M 0 0 L 29.17431640625 0 L 29.17431640625 28.04664611816406 L 0 28.04664611816406 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dfqnof =
    '<svg viewBox="2.0 5.0 25.2 17.6" ><path  d="M 10.82359886169434 16.32844352722168 L 2 16.32844352722168 L 2 18.84587478637695 L 10.82359886169434 18.84587478637695 L 10.82359886169434 22.62202262878418 L 15.84587478637695 17.587158203125 L 10.82359886169434 12.55229568481445 L 10.82359886169434 16.32844352722168 Z M 18.3507194519043 15.06972694396973 L 18.3507194519043 11.2935791015625 L 27.17431831359863 11.2935791015625 L 27.17431831359863 8.776147842407227 L 18.3507194519043 8.776147842407227 L 18.3507194519043 5 L 13.32844352722168 10.03486347198486 L 18.3507194519043 15.06972694396973 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
