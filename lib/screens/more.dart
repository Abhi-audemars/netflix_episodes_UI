import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_episodes/utils/custom_text.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: SafeArea(
          child: SizedBox(
            child: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              elevation: 0,
              backgroundColor: const Color.fromARGB(43, 255, 255, 255),
              title: const CustomText(
                text: 'Rick and Morty',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12,
                    ),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(43, 255, 255, 255),
            // borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              const CustomText(
                text: 'Cast',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Justin Roiland',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Chris Parnell',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Spancer Grammer',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Sarah Chalke',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              const CustomText(
                text: 'Creator',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Dan Harmon',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Justin Roiland',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              const CustomText(
                text: 'Maturity Rating',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
              Container(
                height: 32,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white24,
                ),
                child: Center(
                  child: Text(
                    'A',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'crude humor, gore, suicide, tobacco use, violence',
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const CustomText(
                text: 'Genres',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Sitcoms',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Sci-Fi',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Comedies',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Action',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'US',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
              const CustomText(
                text: 'This show is ',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Absurd',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'Quirky',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
