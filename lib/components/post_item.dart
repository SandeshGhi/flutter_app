import 'package:flutter/material.dart';
import 'package:flutter_test_application/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
                  children: [
                    Image.asset('assets/temp/user1.png', width: 40, height: 40,),
                    SizedBox( width: 16,),
                    Text( user, style: AppText.subtitle3,),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Image.asset('assets/temp/post1.png'),
                SizedBox(
                  height: 12,
                ),
                Text('Picture bskfjbsdkv vdvdoivbdjkvb bvkduvb', style: AppText.subtitle3,),
        ],
      ),
    );
  }
}