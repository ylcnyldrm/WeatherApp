import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HavaDurumuResim.dart';
import 'Location.dart';
import 'MaxveMinSicaklikWidget.dart';
import 'SonGuncelleme.dart';
import 'sehir_sec.dart';

class WeatherApp extends StatelessWidget {
  String kullanicininSectigiSehir = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                kullanicininSectigiSehir = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SehirSec()));
                debugPrint("SEÇİLEN SEHİR"+kullanicininSectigiSehir);
              })
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              child: Center(child: LocationWidget(secilenSehir: kullanicininSectigiSehir,)),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              child: Center(child: SonGuncellemeWidget()),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              child: Center(child: HavaDurumuResimWidget()),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              child: Center(child: MaxveMinSicaklikWidget()),
              padding: EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }
}
