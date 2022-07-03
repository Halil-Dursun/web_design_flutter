import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:web_design_app/riverpod/riverpod_manager.dart';

class HomePageWidget extends ConsumerWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final homePictureModels = ref.read(homePagePictureModelList);
    return Sizer(builder: (context, orientation, deviceType) => Container(
      margin: const EdgeInsets.all(16),
      child: CarouselSlider.builder(
        itemCount: homePictureModels.length,
        options: CarouselOptions(autoPlay: true),
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(
                  homePictureModels[index].photoUrl,
                ),fit: BoxFit.fill,),
                  ),
                ),
                Positioned(child: Text(homePictureModels[index].description,style:  TextStyle(color: Colors.white,fontSize: 35.sp,fontWeight: FontWeight.bold),),),
              ],
            ),
          );
        },
      ),
    ),);
  }
}
