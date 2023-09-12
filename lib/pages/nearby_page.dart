import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/config/app_icons.dart';
import 'package:flutter_test_application/config/app_strings.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby,),
      body: FlutterMap(
        options: MapOptions(
        center: LatLng(27.700769, 85.300140),
        zoom: 10,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(
          markers: [
            Marker(
              height: 50,
              width: 100,
              point: LatLng(27.700769, 85.300140), 
              builder: (context){
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Text("Username", style: TextStyle(color: Colors.black),),
                  ),
                  SvgPicture.asset(AppIcons.icLocation, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn,),),
                ],
              );
            }),

          ],
        )
      ],
      ),
    );
  }
}