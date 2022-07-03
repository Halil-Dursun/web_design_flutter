import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_design_app/utils/const.dart';
import 'package:web_design_app/utils/project_image_paths.dart';

import '../utils/project_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ProjectTextStyle {
  int pageIndex = 0;

  void _changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isWeb = _screenWidth > 920;
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        drawer: _isWeb
            ? null
            : Drawer(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Text('Gündüz Mobilya',style: projectTextStyle(fontSize: 30.sp,color: Colors.black),)),
                    ListTile(
                      onTap: () => _changePage(0),
                      title: const Text('Anasayfa'),
                      leading: const Icon(Icons.home),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                    ListTile(
                      onTap: () => _changePage(1),
                      title: const Text('Ürünler'),
                      leading: const Icon(Icons.shopping_basket_outlined),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                    ListTile(
                      onTap: () => _changePage(2),
                      title: const Text('İletişim'),
                      leading: const Icon(Icons.phone),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: _isWeb ? Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 15.0, bottom: 15),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ProjectImagePaths.titlePicture.path(),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Text(
                  'Gündüz Mobilya',
                  style: projectTextStyle(fontSize: 25.sp, color: Colors.black),
                ),
              ) : Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15.0, bottom: 15),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ProjectImagePaths.titlePicture.path(),
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      'Gündüz Mobilya',
                      style: projectTextStyle(fontSize: 25.sp, color: Colors.black),
                    ),
                  ),
                  Positioned(
                    left: 2,
                    top: 2,
                    child: Row(
                      children: const [
                        Text('Kaydır',style: TextStyle(color: Colors.black,fontSize: 15),),
                        SizedBox(width: 2,),
                        Icon(Icons.arrow_forward_ios_outlined,size: 25,color: Colors.black,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 7,
                child: Row(
                  children: [
                    if (_isWeb)
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () => _changePage(0),
                                title: const Text('Anasayfa'),
                                leading: const Icon(Icons.home),
                                trailing: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                onTap: () => _changePage(1),
                                title: const Text('Ürünler'),
                                leading:
                                    const Icon(Icons.shopping_basket_outlined),
                                trailing: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                onTap: () => _changePage(2),
                                title: const Text('İletişim'),
                                leading: const Icon(Icons.phone),
                                trailing: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Expanded(flex: 8, child: pages[pageIndex]),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
