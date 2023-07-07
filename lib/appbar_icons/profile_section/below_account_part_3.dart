import 'package:flutter/material.dart';

class BelowAccountPartThree extends StatelessWidget {
  const BelowAccountPartThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 2.0,
        child:  Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: SizedBox(
                        height:20,
                        width: 20,
                        child: Image.asset('assets/icons/youtube_kids.png')),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text('YouTube Kids',
                    style: Theme.of(context).textTheme.titleMedium
                    ,),

                ],
              ),

              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Privacy Policy '),
                      Text('- Terms of Service'),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
