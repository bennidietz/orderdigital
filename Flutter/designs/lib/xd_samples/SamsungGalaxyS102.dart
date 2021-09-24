import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamsungGalaxyS102 extends StatelessWidget {
  SamsungGalaxyS102({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff172154),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 109.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0f1326),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 41.5, middle: 0.8027),
            Pin(size: 31.1, end: 36.0),
            child:
                // Adobe XD layer: 'chart-line-solid' (shape)
                SvgPicture.string(
              _svg_k78jv4,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.1978),
            Pin(size: 41.0, end: 31.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 40.9, middle: 0.5026),
                  Pin(start: 0.1, end: 0.0),
                  child:
                      // Adobe XD layer: 'iconmonstr-checkbox…' (shape)
                      SvgPicture.string(
                    _svg_rlxqct,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5028),
            Pin(size: 109.0, end: -0.5),
            child: SvgPicture.string(
              _svg_txfw09,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 59.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0f1326),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 103.0, middle: 0.5019),
            Pin(size: 28.0, start: 17.0),
            child: Text(
              'Depot 46',
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
            Pin(start: 27.0, end: 20.0),
            Pin(size: 156.0, start: 83.0),
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
            Pin(start: 27.0, end: 20.0),
            Pin(size: 57.0, middle: 0.3841),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: const Color(0xff0d1129),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 56.0, end: 40.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '95,6%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 135.0, start: 18.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '1. Ahmet Tamir',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.9, end: 11.1),
                  Pin(start: 13.5, end: 13.5),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_dcjfxq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 20.0),
            Pin(size: 57.0, middle: 0.4794),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: const Color(0xff0d1129),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 56.0, end: 40.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '94,9%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 136.0, start: 18.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '2. Eugen Prulik',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 22.0, end: 14.6),
                  Pin(size: 24.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_rgnp5s,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, middle: 0.5),
            Pin(size: 32.0, middle: 0.6016),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: const Color(0xff0d1129),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 19.0, middle: 0.505),
                  Pin(size: 23.0, start: 0.0),
                  child: Text(
                    '…',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
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
            Pin(start: 27.0, end: 20.0),
            Pin(size: 57.0, middle: 0.7183),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: const Color(0xff0d1129),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 56.0, end: 40.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '65,4%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 171.0, start: 18.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '18. Vanessa Peters',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, end: 13.6),
                  Pin(size: 22.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_sq3w,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 20.0),
            Pin(size: 57.0, middle: 0.8165),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: const Color(0xff0d1129),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 56.0, end: 40.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '63,0%',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 142.0, start: 18.0),
                  Pin(size: 23.0, middle: 0.4706),
                  child: Text(
                    '19. Peter Müller',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 19,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 28.9, end: 11.1),
                  Pin(start: 13.5, end: 13.5),
                  child:
                      // Adobe XD layer: 'iconmonstr-arrow-20' (shape)
                      SvgPicture.string(
                    _svg_x6l4lq,
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

const String _svg_rlxqct =
    '<svg viewBox="20.5 122.0 40.9 40.9" ><path transform="translate(20.48, 121.95)" d="M 17.12570381164551 28.99481582641602 L 9.450604438781738 21.62842559814453 L 11.82988548278809 19.18092346191406 L 17.08306503295898 24.19020462036133 L 29.05792427062988 11.93904209136963 L 31.48325538635254 14.34220027923584 L 17.12570571899414 28.99481582641602 Z M 8.527887344360352 3.411154508590698 C 5.706862926483154 3.411154508590698 3.411155700683594 5.706861972808838 3.411155700683594 8.527886390686035 L 3.411155700683594 32.40597152709961 C 3.411155700683594 35.22699356079102 5.706862926483154 37.52270126342773 8.527887344360352 37.52270126342773 L 32.40597152709961 37.52270126342773 C 35.22699356079102 37.52270126342773 37.52270126342773 35.22699356079102 37.52270126342773 32.40597152709961 L 37.52270126342773 8.527886390686035 C 37.52270126342773 5.706861972808838 35.22699356079102 3.411154508590698 32.40597152709961 3.411154508590698 L 8.527886390686035 3.411154508590698 Z M 40.93385314941406 8.527886390686035 L 40.93385314941406 32.40597152709961 C 40.93385314941406 37.11507034301758 37.11677551269531 40.93385314941406 32.40597152709961 40.93385314941406 L 8.527886390686035 40.93385314941406 C 3.817081928253174 40.93385314941406 0 37.11507034301758 0 32.40597152709961 L 0 8.527886390686035 C 0 3.818787813186646 3.817081928253174 0 8.527886390686035 0 L 32.40597152709961 0 C 37.11677551269531 0 40.93385314941406 3.818787813186646 40.93385314941406 8.527886390686035 Z" fill="#ffffff" stroke="none" stroke-width="39.91666793823242" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k78jv4 =
    '<svg viewBox="255.7 692.9 41.5 31.1" ><path transform="translate(255.65, 628.86)" d="M 40.22346878051758 89.95060729980469 L 5.19012451171875 89.95060729980469 L 5.19012451171875 65.29753875732422 C 5.19012451171875 64.58065032958984 4.609479904174805 64 3.892593622207642 64 L 1.297531127929688 64 C 0.5806452035903931 64 0 64.58065032958984 0 65.29753875732422 L 0 92.54569244384766 C 0 93.97864532470703 1.16210150718689 95.1407470703125 2.595062255859375 95.1407470703125 L 40.22346878051758 95.1407470703125 C 40.94035720825195 95.1407470703125 41.52099609375 94.56009674072266 41.52099609375 93.84320831298828 L 41.52099609375 91.24815368652344 C 41.52099609375 90.53127288818359 40.94035720825195 89.95060729980469 40.22346878051758 89.95060729980469 Z M 37.62841033935547 66.59506225585938 L 28.05424690246582 66.59506225585938 C 26.32042121887207 66.59506225585938 25.4518871307373 68.69139099121094 26.67805480957031 69.91755676269531 L 29.30555152893066 72.54505920410156 L 23.35556221008301 78.495849609375 L 17.40557289123535 72.54586791992188 C 16.39187622070312 71.53216552734375 14.74887561798096 71.53216552734375 13.73599052429199 72.54586791992188 L 8.16552734375 78.11632537841797 C 7.65867805480957 78.62317657470703 7.65867805480957 79.44467926025391 8.16552734375 79.95152282714844 L 9.999912261962891 81.78589630126953 C 10.50675964355469 82.29275512695312 11.32825946807861 82.29275512695312 11.83510780334473 81.78589630126953 L 15.57037448883057 78.04982757568359 L 21.5203685760498 83.99983215332031 C 22.5340633392334 85.01351928710938 24.17706108093262 85.01351928710938 25.1899471282959 83.99983215332031 L 32.97513580322266 76.21463775634766 L 35.60263442993164 78.84213256835938 C 36.82880020141602 80.06830596923828 38.92512512207031 79.19976806640625 38.92512512207031 77.46593475341797 L 38.92512512207031 67.89259338378906 C 38.92593765258789 67.17571258544922 38.34529113769531 66.59506225585938 37.62841033935547 66.59506225585938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_txfw09 =
    '<svg viewBox="180.5 651.5 1.0 109.0" ><path transform="translate(180.5, 651.5)" d="M 0 0 L 0 109" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dcjfxq =
    '<svg viewBox="300.0 304.5 28.9 30.1" ><path transform="matrix(0.34202, -0.939693, 0.939693, 0.34202, 299.06, 326.67)" d="M 13.02499961853027 1 L 10.17799949645996 3.828000068664551 L 16.35400009155273 10.00399971008301 L 0 10.00399971008301 L 0 13.99600028991699 L 16.35400009155273 13.99600028991699 L 10.17799949645996 20.17200088500977 L 13.02499961853027 23 L 24 12 L 13.02499961853027 1 Z" fill="#1f800d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rgnp5s =
    '<svg viewBox="303.4 307.5 22.0 24.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 302.44, 331.5)" d="M 13.02499961853027 1 L 10.17799949645996 3.828000068664551 L 16.35400009155273 10.00399971008301 L 0 10.00399971008301 L 0 13.99600028991699 L 16.35400009155273 13.99600028991699 L 10.17799949645996 20.17200088500977 L 13.02499961853027 23 L 24 12 L 13.02499961853027 1 Z" fill="#1f800d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sq3w =
    '<svg viewBox="302.4 308.5 24.0 22.0" ><path transform="translate(302.44, 307.5)" d="M 13.02499961853027 1 L 10.17799949645996 3.828000068664551 L 16.35400009155273 10.00399971008301 L 0 10.00399971008301 L 0 13.99600028991699 L 16.35400009155273 13.99600028991699 L 10.17799949645996 20.17200088500977 L 13.02499961853027 23 L 24 12 L 13.02499961853027 1 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x6l4lq =
    '<svg viewBox="300.0 304.5 28.9 30.1" ><path transform="matrix(0.34202, 0.939693, -0.939693, 0.34202, 321.61, 304.12)" d="M 13.02499961853027 1 L 10.17799949645996 3.828000068664551 L 16.35400009155273 10.00399971008301 L 0 10.00399971008301 L 0 13.99600028991699 L 16.35400009155273 13.99600028991699 L 10.17799949645996 20.17200088500977 L 13.02499961853027 23 L 24 12 L 13.02499961853027 1 Z" fill="#800d0d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
