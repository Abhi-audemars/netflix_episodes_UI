import 'package:flutter/material.dart';
import 'package:netflix_episodes/utils/custom_text.dart';

class Seasons extends StatefulWidget {
  const Seasons({super.key});

  @override
  State<Seasons> createState() => _SeasonsState();
}

class _SeasonsState extends State<Seasons> {
  final List<String> seasonList = [
    'Season 1',
    'Season 2',
    'Season 3',
    'Season 4',
    'Season 5',
    'Season 6',
    'Season 7'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 70),
              SizedBox(
                height: 320,
                width: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemExtent: 48,
                  itemCount: seasonList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context, seasonList[index]);
                      },
                      child: CustomText(
                          text: seasonList[index],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 65,
                width: 65,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
