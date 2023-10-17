import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_episodes/screens/episodes_page.dart';
import 'package:netflix_episodes/utils/custom_text.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currIndex = 0;
  final List<Widget> pages = [
    const EpisodesPage(),
    const Center(
      child: CustomText(text: '1', fontSize: 20, fontWeight: FontWeight.bold),
    ),
    const Center(
      child: CustomText(text: '2', fontSize: 20, fontWeight: FontWeight.bold),
    ),
    const Center(
      child: CustomText(text: '3', fontSize: 20, fontWeight: FontWeight.bold),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(60, 93, 93, 93),
        currentIndex: _currIndex,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: GoogleFonts.inter(fontSize: 10),
        unselectedLabelStyle: GoogleFonts.inter(fontSize: 10),
        onTap: (value) {
          setState(() {
            _currIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currIndex == 0
                ? Image.asset(
                    'assets/hut-filled.png',
                    height: 25,
                    width: 25,
                  )
                : Image.asset(
                    'assets/hut.png',
                    height: 25,
                    width: 25,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/video-files.png',
              height: 25,
              width: 25,
            ),
            label: 'New & Hot',
          ),
          BottomNavigationBarItem(
            icon: _currIndex == 2
                ? Image.asset(
                    'assets/con-filled.png',
                    height: 25,
                    width: 25,
                  )
                : Image.asset(
                    'assets/console.png',
                    height: 25,
                    width: 25,
                  ),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.network(
                'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-88wkdmjrorckekha.jpg',
                height: 27,
                width: 27,
              ),
            ),
            label: 'My Netflix',
          ),
        ],
      ),
    );
  }
}
