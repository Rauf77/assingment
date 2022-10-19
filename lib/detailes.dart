import 'package:assingment2/home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailes extends StatefulWidget {
  final image;
  final headline;
  final date;
  final channel;
  final news;

  const Detailes({Key? key,  this.image, this.headline, this.date, this.channel,  this.news}) : super(key: key);

  @override
  State<Detailes> createState() => _DetailesState();
}

class _DetailesState extends State<Detailes> {
  @override
  Widget build(BuildContext context) {

    var h= MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return
      Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,

                colors: [
                  Colors.white,
                  Colors.black,
                ]),
            image: DecorationImage(image: CachedNetworkImageProvider(widget.image),
              fit: BoxFit.cover,

            ),
          ),
          child:
          Scaffold(
            backgroundColor: Colors.transparent,

            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pop(false);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 40,


                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black38,
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 300,),

                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Text(widget.headline,
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 29,
                          color: Colors.white
                        )
                      ),
                  ),
                ),
                SizedBox(height: 64,),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(widget.channel,
                        style: GoogleFonts.robotoSlab(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20,

                          ),
                        )
                      ),
                      Text(widget.date,
                        style: GoogleFonts.robotoSlab(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20,


                          ),
                        )
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(right: 24,left: 24),
                  child: Text(widget.news,

                    style: GoogleFonts.robotoSlab(
                      textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[350],
                          fontWeight: FontWeight.bold
                      ),
                    )),
                )





              ],
            ),


          )
      );


  }
}
