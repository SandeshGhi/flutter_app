import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/components/user_avatar.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/styles/app_text.dart';

enum ProfileMenu{
  edit,
  logout
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Profile', actions: [
        PopupMenuButton<ProfileMenu>(
          onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                // Navigator.of(context).pushNamed('/edit_profile');
                print('logout');
                break;  
              default:  
            }
          },
          itemBuilder: (context) {
          return[
            PopupMenuItem(
              child: Text('Edit'), 
              value: ProfileMenu.edit,
            ),
            PopupMenuItem(
              child: Text('Log out'), 
              value: ProfileMenu.logout,
            ),
          ];
        })
      ],),
      body: Column(
        children: [
          UserAvatar(size: 90,),
          SizedBox(height: 24,),
          Text('Sandesh Ghimire', style: AppText.header2,),
          SizedBox(height: 12,),
          Text('Nepal', style: AppText.subtitle3,),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('16K', style: AppText.header2,),
                  Text('Followers')
              ],),
              Column(
                children: [
                  Text('119', style: AppText.header2,),
                  Text('Posts')
              ],),
              Column(
                children: [
                  Text('25', style: AppText.header2,),
                  Text('Following')
              ],),
            ],
          ),
          Divider(thickness: 1,height: 24,),

        ],
      ),
    );
  }
}