import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_episodes/utils/custom_text.dart';
import 'package:netflix_episodes/utils/more_like_this_card.dart';
const String image1 =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVSA2jtwXU1UbWrhtoziyrxpDdAqPJCfIvrhmdYVIDfzELfwItJAjMxIN6qg&s';
const String image2 =
    'https://pyxis.nymag.com/v1/imgs/cd8/804/e0f612fa12d17e68e3d68ccf55f93cac4f-06-rick-morty.jpg';
const String image3 =
    'https://i.guim.co.uk/img/media/b563ac5db4b4a4e1197c586bbca3edebca9173cd/0_12_3307_1985/master/3307.jpg?width=620&quality=85&auto=format&fit=max&s=b8e6130f15f574d9dcfce973d227361c';

const String image4 =
    'https://variety.com/wp-content/uploads/2022/07/rick-and-morty-season-6.jpg?w=1000';

const String image5 =
    'https://wallpapers.com/images/hd/rick-and-morty-pictures-b3e2pq02sb2fuvy3.jpg';

const String image6 =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzbTkf1RKEnnQFbOIrTTfuxVapHPcML6l1AQ';

const String image7 =
    'https://static.wikia.nocookie.net/netflix/images/4/49/Inside_Job.jpg/revision/latest/thumbnail/width/360/height/450?cb=20211026093951';
const String image8 =
    'https://assets.gadgets360cdn.com/pricee/assets/product/202212/paradise-pd-season-4_1670569137.jpg';
const String image9 =
    'https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABb9qA1D1j2snqPOC4eW9VfzQl2KPnZkTkkmpS_YTEHxJwARRtT2lz7kg-w96mkLP89CQhCzQXoV_4QOX0YmIxprleWWyfZJGuH9z8Qy6Rqk2k7YpFtoM2NOrIaHuq1sBxQmnqQ.jpg?r=781';
const String image10 =
    'https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABbSPSulTId3OhGdVLfARG0YoiC_6c3ps4B0gdiDRzX85_RZCvU6gr6bwQuHrAvnOY-Z3YS2xh95pInACbny_D1gZORauw-EaHlrhfZym3AIyOL35Dha0Lx6Rln4ndxubekov6w.jpg?r=0e1';
const String image11 =
    'https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABdqnWO6zMFXT1TsRuW9JQQPbLdeuZs6oQ6yV_XpdV9rInhpHHg1nYc-GIZk1P9hEYp_XiDypgCRljvFybcrUldxoGQXGZOExMYcFtKh-whWx0EnFu2O_eqU9skKE0FLUz4Ytuw.jpg?r=8b1';
const String image12 =
    'https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABVqhgLNuHZi0ZgmxhZGzhy6sVXw6lx9uwmGzOhO8qxfGo3VeqLP4Y_rH8_3I5WWsnFBY-IWuGLB4B4GfxxUuhhvFD__kZura-xZYtOZN656LfZL0VF9GSRXsV5kue4EeChrw6A.jpg?r=05d';
const String image13 =
    'https://occ-0-2311-999.1.nflxso.net/dnm/api/v6/evlCitJPPCVCry0BZlEFb5-QjKc/AAAABaRqpNtVh8Hy3Vuivq9Bk9GqDYQ1qe5VAbrPY6VsWAv3c6i8ErnxrYbzQiZjPbexLyNzysPrF0sPmrX-LDPjyK15zTxT7mDuxaUpZbzJqVxsBg_513Cr0WdnFtXz0Whc9kKm9xww3QG_H2vDVkuNxM9rOJIdweg.jpg';
const String image14 =
    'https://occ-0-999-1001.1.nflxso.net/dnm/api/v6/XsrytRUxks8BtTRf9HNlZkW2tvY/AAAABThxF5iI-Hae6nxnoDfxYiEwLiOIdAkkpsonSKf_UszSw0kfftdoa8OehOkh6W9-aONvMnQcgl8LoToxZSKVNZe3vJ8gg-arssAfrCaKJ0BNQzimT0nZkpXfxDI9vJ_rACfG1R94AGIpuWgpffuI0CIf5kJ5Cj0.jpg';
const String image15 =
    'https://occ-0-2705-2706.1.nflxso.net/dnm/api/v6/Da_vleYcahiCE7JMYt8LJRyoenc/AAAABcP7M2-m-8REGc4xlOzQITDj6lhYSzcoVh7Ujp7a2UIX1UqLMlqN57xoMVz-uHdu9xM9eHeYU2KQ78SiNf8RUwH19YV2.jpg';
const String image16 =
    'https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABaBDqSrBgRNzfVbJ3OD8naBq-hNpIBM9V-vkMvX7rx3Zk1xyrIF6h-2pIF7qNni5VQkbITYGbEMzlex_htnV1nIEsZW-Upmb6tzdOjhs2KnZBqFLVmSvO5JmxXnBF1a7b9sJsA.jpg?r=837';
const String image17 =
    'https://occ-0-978-116.1.nflxso.net/dnm/api/v6/oQyw8Fv9eE41UPapt7zHvdUdzrE/AAAABRBPLav_tL9jDHhjLiFH648XeksG5VNmvCkB9HiA-biwemkUFhtZNgTh26mD1AMKbIfIl_uPrVg7Iftrgm77F7bRLG_yoXNzgk2y3gFE4RSS9b3zUpO-AtnwFyGFXT47Ug1PG9KE8kpsbzwWikjAfLi_j59Bp_aSF8MWSeYWkP3K9k2pxYuKnSies7-g6YVpN5He2c3a3WHonapkFtlA_Fd8QEf1hlsQYN9a9APgFWV9Elq0yMXH3W7xPgqHV7ClojedKayfWU7gfF1zth_e3BX19hs1dVFSb0eTwppwZsmZaj9zb8vH.jpg';
const String image18 =
    'https://resizing.flixster.com/zx_u60-0hAUWX_6FZXoNbXZIWTM=/ems.cHJkLWVtcy1hc3NldHMvdHZzZXJpZXMvNjNmNTI2ZmQtYzRhZS00MmFhLTgyMmYtMmMxMWQyOGFlNDM2LnBuZw==';


class GlobalVariables{
  Padding buildEpisodeWidget(String imageUrl, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 87,
                          width: 145,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                imageUrl,
                              ),
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7)),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 39,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: SizedBox(
                                width: 130,
                                child: Text(
                                  title,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  // softWrap: true,
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const CustomText(
                                text: '22m',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: Image.asset(
                        'assets/doen.png',
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 7),
                const CustomText(
                    padding: 0,
                    text:
                        'Rick takes Morty on a trip to another dimension to find seeds for "mega-trees", while Jeery and Beth argue over Ricks influence ont thier son.',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding buildoreLikeThis() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoreLikeThis(image: image7),
              MoreLikeThis(image: image8),
              MoreLikeThis(image: image9),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoreLikeThis(image: image10),
              MoreLikeThis(image: image11),
              MoreLikeThis(image: image12),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoreLikeThis(image: image13),
              MoreLikeThis(image: image14),
              MoreLikeThis(image: image15),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoreLikeThis(image: image16),
              MoreLikeThis(image: image17),
              MoreLikeThis(image: image18),
            ],
          )
        ],
      ),
    );
  }

  

}
 