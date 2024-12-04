import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/icons/logo web.png'),
            Spacer(),
            Text('Home',style: TextStyle(color: Colors.white),),
            SizedBox(width: 20,),
            Text('About Us',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 20,),
            Text('Products',style: TextStyle(color: Colors.grey),),
            Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
            SizedBox(width: 20,),
            Text('Packing',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 20,),
            Text('Quality Control',style: TextStyle(color: Colors.grey),),
            Spacer(),
            Text('EN',style: TextStyle(color: Colors.white),),
            Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(child: Text('Contact Us',style: TextStyle(color: Colors.white),)),
              ),
            ),
            SizedBox(width: 20,)





          ],
        ),
      ),
    );
  }
}
