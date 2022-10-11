import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:rick_and_morty/util/constant.dart';

class CharacterAppBar extends StatelessWidget {
  const CharacterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primaryBlack,
      automaticallyImplyLeading: true,
      // pinned: false,
      // snap: true,
      floating: true,
      expandedHeight: 300,
      // collapsedHeight: 50,
      // backgroundColor: Colors.amberAccent,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/Rick and Morty artwork by Findo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        side: BorderSide(
          color: AppColors.seconadrySlimyGreen,
          width: 3,
        ),
      ),
      // bottom: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Container(
      //     height: 45,
      //     child: TextField(
      //       cursorColor: AppColors.slimyGreenlite,
      //       decoration: InputDecoration(
      //         enabledBorder: OutlineInputBorder(
      //           borderSide: BorderSide(
      //             width: 4,
      //             color: AppColors.slimyGreenlite,
      //           ),
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         focusedBorder: UnderlineInputBorder(
      //             borderSide: BorderSide(
      //           color: AppColors.slimyGreenlite,
      //           width: 3,
      //         )),
      //         hintText: 'Enter a search term',
      //         hintStyle: GoogleFonts.cormorantGaramond(
      //           textStyle: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: AppColors.primaryWhite),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
