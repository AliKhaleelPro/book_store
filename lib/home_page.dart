<<<<<<< HEAD
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
=======
import 'package:book_task_flutter/data/books_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
>>>>>>> 2dbebcd (page two)
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD

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
=======
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
                              image: DecorationImage(
                                  image: NetworkImage(imgProfile))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hi, ALi!',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff06070D)),
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Color(0xff06070D),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Text('Book List',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff06070D))),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3.2,
                  child: ListView.builder(
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(
                                  data: books[index],
                                ),
                              )),
                          child: book(
                            books[index].image.toString(),
                            books[index].book.toString(),
                            books[index].name.toString(),
                            books[index].price.toString(),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
>>>>>>> 2dbebcd (page two)
      ),
    );
  }

<<<<<<< HEAD
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
=======
  Widget book(String image, String book, String name, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: 106,
            width: 72,
          ),
          const SizedBox(
            width: 26,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                book,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff06070D).withOpacity(0.5)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
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

  Icon starIcon(Color color) => Icon(
        Icons.star,
        size: 14,
        color: color,
      );
>>>>>>> 2dbebcd (page two)
}
