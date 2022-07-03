import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:web_design_app/model/product_model.dart';
import 'package:web_design_app/riverpod/riverpod_manager.dart';

class ProductPageWidget extends ConsumerWidget {
  const ProductPageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> products = ref.read(productList);
    return Sizer(builder: (context, orientation, deviceType) => Center(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => showMyDialog(model: products[index], context: context),
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)
                ),
                child: Column(
                  children: [
                    Expanded(flex: 3,child: Container(
                      //margin: const EdgeInsets.all(2),
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        image: DecorationImage(image: NetworkImage(products[index].photoUrls[0]),fit: BoxFit.fitWidth),
                      ),
                    )),
                    Expanded(flex:2,child: Text(products[index].name,style: TextStyle(color: Colors.black,fontSize: 8.sp,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ),);
  }

  showMyDialog({required Product model,required context}){
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isWeb = _screenWidth > 920;
    showDialog(context: context, builder: (_) => AlertDialog(
      content: SizedBox(
        height: 100.h,
        width: 150.w,
        child: _isWeb ? Row(
          children: [
            Expanded(flex: 1,child: CarouselSlider.builder(itemCount: model.photoUrls.length, itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(model.photoUrls[index],),fit: BoxFit.fill,),
                ),
              );
            }, options: CarouselOptions(autoPlay: true),),),
            Expanded(flex:1,child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(model.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(model.desctription,style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                  ),
                ],
              ),
            ),),
          ],
        ) : Column(
          children: [
            Expanded(flex: 1,child: CarouselSlider.builder(itemCount: model.photoUrls.length, itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(model.photoUrls[index],),fit: BoxFit.fill,),
                ),
              );
            }, options: CarouselOptions(autoPlay: true),),),
            Expanded(flex:1,child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(model.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(model.desctription,style: TextStyle(color: Colors.black,fontSize: 10.sp),),
                  ),
                ],
              ),
            ),),
          ],
        ),
      ),
    ),);
  }
}
