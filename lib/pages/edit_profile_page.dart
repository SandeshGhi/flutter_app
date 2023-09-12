import 'package:flutter/material.dart';
import 'package:flutter_test_application/components/app_text_field.dart';
import 'package:flutter_test_application/components/toolbar.dart';
import 'package:flutter_test_application/components/user_avatar.dart';
import 'package:flutter_test_application/config/app_strings.dart';
import 'package:flutter_test_application/styles/app_colors.dart';
import 'package:flutter_test_application/styles/app_text.dart';

enum Gender{
  none,
  male, 
  female,
  other
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.appName,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: UserAvatar(size: 120,),
                  ),
                  Positioned(
                    bottom:0, 
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                  child: Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.black,
                  ),)
                  ),
                ],
              ),
              SizedBox(height: 60,),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(height: 16,),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(height: 16,),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(height: 16,),
              AppTextField(hint: AppStrings.location),
              SizedBox(height: 16,),
              AppTextField(hint: AppStrings.birthday),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.gender, style: AppText.body1.copyWith(
                      fontSize: 12,
                    ),),
                    Row(children: [
                      Expanded(
                        child: RadioListTile(
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity
                          ),
                        title: Text(AppStrings.male),
                        value: Gender.male, 
                        contentPadding: EdgeInsets.zero,
                        groupValue: gender, 
                        onChanged: (value) {
                          setState(() {
                            gender = Gender.male;
                          });
                        }
                                    ),
                      ),
                    Expanded(
                      child: RadioListTile(
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity
                          ),
                        title: Text(AppStrings.female),
                        value: Gender.female, 
                        contentPadding: EdgeInsets.zero,
                        groupValue: gender, 
                        onChanged: (value) {
                          setState(() {
                            gender = Gender.female;
                          });
                        }
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity
                          ),
                        title: Text(AppStrings.other),
                        value: Gender.other, 
                        contentPadding: EdgeInsets.zero,
                        groupValue: gender, 
                        onChanged: (value) {
                          setState(() {
                            gender = Gender.other;
                          });
                        }
                      ),
                    ),
                    ],),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}