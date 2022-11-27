import 'package:book_task_flutter/model/book.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  final Book data;

  const Details({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: const [

          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.network(
                data.image.toString(),
                height: 300,
              ),
              SizedBox(height: 22,),
              Text(
                data.book.toString(),
                style:
                    GoogleFonts.poppins(fontSize: 24, color: Color(0xff06070D)),
              ),
              SizedBox(height: 12,),
              Text(
                data.name.toString(),
                style: GoogleFonts.poppins(
                    fontSize: 14, color: Color(0xff06070D).withOpacity(0.5)),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      starIcon(Color(0xffFFC41F)),
                      starIcon(Color(0xffFFC41F)),
                      starIcon(Color(0xffFFC41F)),
                      starIcon(Color(0xffEDEDEF)),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('4.5 '),
                  Text(
                    '/ 5.0',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xff06070D).withOpacity(0.5)),
                  ),
                ],
              ),
              SizedBox(height: 19,),
              Text(
                data.des.toString(),
                style: GoogleFonts.poppins(
                    fontSize: 16, color: Color(0xff06070D).withOpacity(0.5)),
              ),
              SizedBox(height: 22,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  viewContainer(imgIcon: 'assets/images/Vector-3.png',text:'Preview' ),
                  SizedBox(width: 13,),

                  viewContainer(imgIcon: 'assets/images/Vector-4.png',text:'Reviews' ),
                ],
              ),
              SizedBox(height: 44,),
              Container(
                alignment: AlignmentDirectional.center,
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                    color:  Color(0xff06070D),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Text(
                  'Buy Now for \$46.99' ,
                  style:
                  GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Container viewContainer({required String imgIcon, text}) {
    return Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)

                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(imgIcon,height: 13,width: 18,),
                      Text(
                        text ,
                        style:
                        GoogleFonts.poppins(fontSize: 14, color: Color(0xff06070D)),
                      ),

                    ],
                  ) ,
                );
  }
}

Icon starIcon(Color color) => Icon(
      Icons.star,
      size: 14,
      color: color,
    );
