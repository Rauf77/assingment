import 'package:assingment2/detailes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List news=[
      {
        'headlines':'Boeing is dedicating 100 million to families and communities affected by the 737 Max crashes',
        'Channel':'CNN',
        'date':'2019-07-03',
        'image':'https://image.cnbcfm.com/api/v1/image/106037362-1563978905003rts2lkgl.jpg?v=1575918311',
        'news':'Boeing has set aside 100 million dollars to support the families of victims of its troubled 737 Max aircraft, which experienced two crashes in under six months that killed 346 people.'

      },
      {
        'headlines':'From Iron Man to Spider-Man: Far From Home: all 23 Marvel movies, ranked',
        'Channel':'Vox.com',
        'date':'2019-07-03',
        'image':'https://cdn.vox-cdn.com/thumbor/zuDN635rLRtsVEWlimS0A_YesxQ=/0x0:1777x943/920x613/filters:focal(469x281:753x565):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63694166/MV5BMWY1NDE2NTAtMWU0OS00NGI3LWJiZTMtZTcwNzllZGY1M2EwXkEyXkFqcGdeQXVyNjg2NjQwMDQ_._V1_SX1777_CR0_0_1777_943_AL_.0.jpg',
        'news':'There are now 23 movies on the studio’s roster, dating back to 2008’s Iron Man, and Vox has ranked them all from worst to best. To come to this completely scientific and definitive assessment, four Vox culture writers each assigned every film a point value from 1 to 23, with 23 being the best. Then we tallied the results for each film; the movie with the highest total won the top spot, the second-highest total came in second, and so on.'

      },
      {
        'headlines':'Trump’s first 100 days on the global stage',
        'Channel':'CNN',
        'date':'2019-07-03',
        'image':'https://cdn.cnn.com/cnnnext/dam/assets/170425141811-0425-trump-geopolitics-america-first-exlarge-tease.jpg',
        'news':'The US, President Donald Trump said during his campaign, could no longer afford to be the world’s policeman. On the stump he also dismissed core alliances in Europe and Asia, raged at trade pacts, derided international organizations such as the UN and trash-talked allies (Mexico) and competitors (China) alike'

      }
    ];
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: h/10,
          title: Text('HEADLINES',
            style: GoogleFonts.robotoSlab(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold
              ),
            )),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: ListView(
          children: List.generate(news.length, (index) {
            final list=news;
            return Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 12,top: 12),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailes(
                    image:news[index]['image'],
                    headline:news[index]['headlines'],
                    date:news[index]['date'],
                    channel:news[index]['Channel'],
                    news:news[index]['news']


                  )));
                },
                child: Container(
                  height: h/4,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image:CachedNetworkImageProvider(news[index]['image']),
                    fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12,Colors.black])

                  ),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                        child: Text(news[index]['headlines'],
                        style: GoogleFonts.robotoSlab(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
                            fontSize: 29,

                          ),
                        )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(


                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16,left: 8,),
                            child: Text(news[index]['Channel'],
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white70,
                                  fontSize: 20,

                                ),
                              )
                            ),
                          ),
                          SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16,right: 8),
                            child: Text(news[index]['date'],
                              style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white70,
                                  fontSize: 20,

                                ),
                              )
                            ),
                          ),

                        ],
                      )
                    ],
                  ),

                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
