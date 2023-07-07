


import 'package:flutter/material.dart';

class CastIconOnAppBar extends StatelessWidget {
  const CastIconOnAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _showCastDialog(context);
      },
      icon:  Icon(Icons.cast,
      color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}

Future _showCastDialog (BuildContext context)
{
  return showDialog(context: context, builder: (context) {
    return   AlertDialog(

      title: const Text('Connect to a device'),
      content:SizedBox(
        height: 150,
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                    height:20,
                    width:20,
                    child: CircularProgressIndicator()),
                    SizedBox(width: 30,),
                    Text('Searching for devices',
                      style: TextStyle(fontSize: 15.0,),
                    ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(children: [
              Icon(Icons.reset_tv_outlined,
              color: Theme.of(context).iconTheme.color,
              ),
                  const SizedBox(width: 30,),
                  const Text('Link with TV code',style: TextStyle(
                    fontSize: 15.0,
                  ),
                  ),
            ],),
            const SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.info_outline,
                color: Theme.of(context).iconTheme.color,
                ),
                const SizedBox(width: 30,),
                const Text('Learn more',style: TextStyle(
                  fontSize: 15.0,
                ),
                ),
              ],
            )

          ],
        ),
      ),

      // commented code will do the same as above code...
      // Wrap(
      //   children: [
      //     CircularProgressIndicator(),
      //     SizedBox(width: 30,),
      //     Text('Searching for devices',style: TextStyle(
      //       fontSize: 15.0,
      //     ),
      //     ),
      //     SizedBox(width: 30,height: 60,),
      //     Icon(Icons.reset_tv_outlined),
      //     SizedBox(width: 40,),
      //     Text('Link with TV code',style: TextStyle(
      //       fontSize: 15.0,
      //     ),
      //     ),
      //     SizedBox(width: 60,height: 50,),
      //     Icon(Icons.info_outline),
      //     SizedBox(width: 40,),
      //     Text('Learn more',style: TextStyle(
      //       fontSize: 15.0,
      //     ),
      //     ),
      //   ],
      // ),

    );
  },
  );
}