import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_episodes/screens/seasons.dart';
import 'package:netflix_episodes/utils/custom_text.dart';
import 'package:netflix_episodes/utils/global_variables.dart';
import 'package:netflix_episodes/screens/more.dart';
import 'package:netflix_episodes/utils/video_player.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({super.key});

  @override
  State<EpisodesPage> createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  String currentSeason = 'Season 1';
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.search),
          )
        ],
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VideoPlayerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                'Rick and Morty',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  Text(
                    '2022',
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 17,
                    width: 17,
                    decoration: const BoxDecoration(
                      color: Colors.white30,
                    ),
                    child: Text(
                      'A',
                      style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '6 Seasons',
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.only(right: 2, left: 2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white70)),
                    child: Text(
                      'HD',
                      style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 9.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.comments_disabled_outlined,
                    color: Colors.white70,
                    size: 19.4,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                'New episode coming on Monday',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 35,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Play',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  minimumSize: const Size(double.infinity, 48),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/doen.png',
                      height: 23,
                      width: 23,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      ' Download S6:E1',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                'S6:E1 "Solaricks"',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const CustomText(
              text:
                  "They're back...and right where we left 'em. Without a portal gun, Rick and Morty are stranded as they float through space in the ruins of the Citadel.",
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const More(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'Starring:',
                      style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Justin Roiland, Cris Parnell, Soe...',
                      style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'more',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Text(
                    'Creators:',
                    style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Dan Harmon, Justin Roiland',
                    style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.add_sharp,
                      color: Colors.white,
                      size: 32,
                    ),
                    CustomText(
                      text: 'My List',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      padding: 0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/THUM.png',
                      height: 23,
                      width: 23,
                    ),
                    const SizedBox(height: 5),
                    const CustomText(
                      text: 'Rate',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      padding: 0,
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.share_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(height: 4),
                    CustomText(
                      text: 'Share',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      padding: 0,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/doen.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(height: 5),
                    const CustomText(
                      text: 'Download \nSeason 6',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      padding: 0,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 1.5,
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TabBar(
                onTap: (value) {
                  setState(() {
                    index = value;
                  });
                },
                dividerColor: Colors.black,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.red, width: 4),
                  insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 45.0),
                ),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelStyle: GoogleFonts.inter(fontWeight: FontWeight.bold),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    text: 'Episodes',
                  ),
                  Tab(
                    text: 'More Like This',
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            if (index == 0) episodesList(),
            if (index == 1) GlobalVariables().buildoreLikeThis(),
          ],
        ),
      ),
    );
  }

  Widget episodesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async {
            final selectedSeason = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Seasons(),
              ),
            );
            if (selectedSeason != null) {
              setState(() {
                currentSeason = selectedSeason;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              width: 120,
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromARGB(60, 228, 228, 228),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                children: [
                  CustomText(
                    text: currentSeason,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
        GlobalVariables().buildEpisodeWidget(image1, '1.Pilot'),
        const SizedBox(height: 20),
        GlobalVariables().buildEpisodeWidget(image2, '2.Lawnmower Dog'),
        const SizedBox(height: 20),
        GlobalVariables().buildEpisodeWidget(image3, '3.Anatomy Park'),
        const SizedBox(height: 20),
        GlobalVariables().buildEpisodeWidget(image4, '4.M.Night Shyam-Alient'),
        const SizedBox(height: 20),
        GlobalVariables().buildEpisodeWidget(image5, '5.Meeseeks and Destroy'),
        const SizedBox(height: 20),
        GlobalVariables().buildEpisodeWidget(image6, '6.Rick Postion#9'),
        const SizedBox(height: 20),
      ],
    );
  }
}
