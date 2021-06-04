import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Film{
  String nm, ia, ln, tp, cr, dt, tm, sr, sa, bo, bl, lc, qc;
  Film({this.nm, this.ia, this.ln, this.tp, this.cr, this.dt, this.tm, this.sr, this.sa, this.bo, this.bl, this.lc, this.qc});
  factory Film.fromJson(Map<String, dynamic> p){
    return Film(nm:p['nm'],ia:p['ia'],ln:p['ln'],tp:p['tp'],cr:p['cr'],dt:p['dt'],tm:p['tm'],sr:p['sr'],sa:p['sa'],bo:p['bo'],bl:p['bl'],lc:p['lc'],qc:p['qc']);
  }
}
Future<String> loadAsset() async{return await rootBundle.loadString('assets/data/flim.json');}
Future<Film> loadFilm() async{return new Film.fromJson(json.decode(await loadAsset()));}