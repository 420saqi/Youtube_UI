import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title:  Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 8.0),
            child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration:  InputDecoration(
                    label: const Text('Search YouTube'),
                    filled: true,
focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: BorderSide.none,
),
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
                ),
                ),
              ),
              const Icon((Icons.mic_none_rounded))
            ],
    ),
          ),
        ),
      ),
    );
  }
}
