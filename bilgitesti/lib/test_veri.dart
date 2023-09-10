import 'package:bilgitesti/soru.dart';

class TestVeri{
  int _soruIndex = 0;

  List<Soru> _soruSayisi = [
    Soru(soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
    Soru(soruMetni: "Dünyadaki tavuk sayısı insan sayısından fazladır", soruYaniti: true),
    Soru(soruMetni: "Kelebeklerin ömrü bir gündür", soruYaniti: false),
    Soru(soruMetni: "Dünya düzdür", soruYaniti: false),
    Soru(soruMetni: "Kaju fıstığı aslında bir meyvenin sapıdır", soruYaniti: true),
    Soru(soruMetni: "Fatih Sultan Mehmet hiç patates yememiştir", soruYaniti: true)
  ];


  String getSoruMetni(){
    return _soruSayisi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti(){
    return _soruSayisi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru(){
    if(_soruIndex<_soruSayisi.length-1){
    _soruIndex++;
  }
    else{
      _soruIndex=0;
    }
  }

  bool testBittimi(){
    if(_soruIndex>=_soruSayisi.length-1){
      return true;
    }
    else{return false;}
  }

  void testiSifirla(){
    _soruIndex=0;
  }
}

