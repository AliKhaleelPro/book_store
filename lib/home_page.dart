import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                      children: [

                       Container(
                         height: 40,
                         width: 40,
                         decoration: BoxDecoration(

                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: NetworkImage(imgProfile))
                         ),
                       ),
                        SizedBox(width: 10,),
                          Text('Hi, ALi!',style: GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w600,color: Color(0xff06070D)),
                          )
                      ],
                ),
                Icon(Icons.more_vert,size: 30,color:  Color(0xff06070D),),
                   ],
                 ),
                SizedBox(height: 48,),
                Text('Book List',style: GoogleFonts.poppins(fontSize: 24,fontWeight:FontWeight.w600,color: Color(0xff06070D))),
                SizedBox(height: 16,),

                book(img1,'Yves Saint Laurent','Suzy Menkes ','\$46.99'),
                book(img2,'The Book of Signs','Rudolf Koch  ','\$99.99'),
                book(img1,'Yves Saint Laurent','Suzy Menkes ','\$46.99'),
                book(img2,'The Book of Signs','Rudolf Koch  ','\$99.99'),
                book(img1,'Yves Saint Laurent','Suzy Menkes ','\$46.99'),
              ],
            ),
          ),
        ) ,
      ),
    );
  }

  Widget book( String image,String book,String name , String price ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(image, height: 106,width: 72,),
                  const SizedBox(width: 26,),

                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(book,style: GoogleFonts.poppins(fontSize: 16,fontWeight:FontWeight.w600),),
                      const SizedBox(height: 10,),
                      Text(name,style: GoogleFonts.poppins(fontSize: 12,fontWeight:FontWeight.w500,color: Color(0xff06070D).withOpacity(0.5)),),
                      const SizedBox(height: 10,),
                      Text(price,style: GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w500),),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          starIcon(Color(0xffFFC41F)),
                          starIcon(Color(0xffFFC41F)),
                          starIcon(Color(0xffFFC41F)),
                          starIcon(Color(0xffEDEDEF)),
                        ],
                      )

                    ],
                  )
                ],
              ),
    );
  }

  Icon starIcon(Color color) => Icon(Icons.star,size: 14,color:color,);
}
