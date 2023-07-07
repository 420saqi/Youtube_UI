import 'package:flutter/material.dart';
import 'package:youtube/appbar_icons/profile_section/below_account_part_3.dart';
import 'package:youtube/appbar_icons/profile_section/below_account_section_1.dart';
import 'package:youtube/appbar_icons/profile_section/below_account_section_2.dart';
import 'package:youtube/appbar_icons/profile_section/close_icon_on_profile.dart';
import 'package:youtube/appbar_icons/profile_section/profile_email_account_section.dart';

class ProfileModelBottomSheet extends StatelessWidget {
  const ProfileModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return  const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CloseIconOnProfile(),

                    SizedBox(height: 10,),

                   ProfileAccountSection(),

                    BelowAccountSectionPartOne(),

                    BelowAccountPartTwo(),

                    BelowAccountPartThree(),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ClipOval(
        child: Image.asset(
          'assets/images/account_info.jpg',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
