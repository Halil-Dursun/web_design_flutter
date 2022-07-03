import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContactScreens extends StatelessWidget {
  const ContactScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _contactItems(
                const Icon(
                  Icons.phone,
                  size: 50,
                ),
                '0555 555 55 55'),
            SizedBox(
              height: 2.h,
            ),
            _contactItems(
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/12/11/11/43/google-1088004__340.png',
                  height: 50,
                  width: 50,
                ),
                'gunduzmobilya@gmail.com'),
            SizedBox(
              height: 2.h,
            ),
            _contactItems(
                Image.network(
                  'https://cdn.pixabay.com/photo/2016/08/01/21/00/icon-1562136__340.png',
                  height: 50,
                  width: 50,
                ),
                'mobilyagunduz'),
            SizedBox(
              height: 2.h,
            ),
            _contactItems(
                Image.network(
                  'https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688__340.png',
                  height: 50,
                  width: 50,
                ),
                'mobilyagunduz'),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _contactItems(Widget child, String title) {
  return Row(
    children: [
      child,
      SizedBox(
        width: 4.w,
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 10.sp, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
