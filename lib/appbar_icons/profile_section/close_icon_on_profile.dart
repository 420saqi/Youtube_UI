import 'package:flutter/material.dart';
class CloseIconOnProfile extends StatelessWidget {
  const CloseIconOnProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        icon:  Icon(Icons.close,
          color: Theme.of(context).iconTheme.color,)
    );
  }
}
