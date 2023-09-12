import 'package:flutter/material.dart';
import 'package:flutter_test_application/components/post_item.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/config/app_icons.dart';
//import 'package:flutter_test_application/styles/app_colors.dart';
//import 'package:flutter_test_application/styles/app_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_application/config/app_routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(title: 'Flutter App', actions: [
        IconButton(onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.nearby);
        }, icon: SvgPicture.asset(AppIcons.icLocation),),
      ],),
      body: ListView.separated(itemBuilder: (context, index) {
        return PostItem(user: users[index],);
      },
      itemCount: users.length,
      separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(
          height: 20,
        );
       },
      ),
    );
  }
  
  mockUsersFromServer(){
    for (var i=0; i < 100; i++) {
      users.add('User number $i');
    }
    return users;
  }
}