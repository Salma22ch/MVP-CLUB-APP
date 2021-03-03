import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   static const DarkBlue= const Color(0xff002f5b);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(
        margin: EdgeInsets.only(top:8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              height:30,
              margin:EdgeInsets.only(left:16,right:16,top:16),
              child: Row(
                children:<Widget> [
                GestureDetector(
                  onTap: (){
                    print('test');
                  },
                  child: SvgPicture.asset('assets/svg/student_icon.svg')),
              ],),),

              SizedBox(
                height:10
              ),

              Padding(
                padding: const EdgeInsets.only(left :16, bottom:16),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:<Widget> [
                   Text("What's New :" , style: GoogleFonts.inter(
                     fontSize: 18 ,
                     fontWeight: FontWeight.w700,
                     color: Colors.blueGrey,
                   ),),
                ],),
              ), 
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left:10 , right:6),
                  itemCount:3 , 
                  itemBuilder:(context,index){
                  return Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: Container(
                       height: 70,
                       width: 230,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         gradient: new LinearGradient(
                             colors: [
                             const Color(0xFFFFFFFF),
                             const Color(0xff002f5b),
                                ],
                           begin:Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           )
                       ),
                       child:Column(children:<Widget> [
                         Spacer(),
                         Text("BDE : Assemblée Générale " , style: GoogleFonts.inter(
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                          color: Colors.white,
                         ),),
                         SizedBox(
                           height:5
                         ),
                         Text("Le BDE vous informe qu'une assembl.." , style: GoogleFonts.inter(
                         fontSize: 10,
                         fontWeight: FontWeight.w300,
                          color: Colors.white,
                         ),),
                          SizedBox(
                           height:10
                         ),
                       ],)
                    ),
                  );
                })),

                Divider(),

                SizedBox(
                  height:10
                ),
               Padding(
                padding: const EdgeInsets.only(left :16, bottom:16),
                child: Row(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:<Widget> [
                   Text("BDE :" , style: GoogleFonts.inter(
                     fontSize: 18 ,
                     fontWeight: FontWeight.w700,
                     color: Colors.blueGrey,
                   ),),
                ],),
              ),



               Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left:16 , right:6),
                  itemCount:5 , 
                  itemBuilder:(context,index){
                  return Padding(
                    padding:const EdgeInsets.only(right:10),
                    child: Container(
                       height: 140,
                       width: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: DarkBlue,
                          boxShadow: [
                            BoxShadow(
                           color: Colors.grey,
                           blurRadius: 5,
                           offset: Offset(2, 2), // Shadow position
                           ),]

                        
                       ),
                       child:Column(children:<Widget> [
                         SizedBox(
                           height:20
                         ),
                         SvgPicture.asset('assets/svg/notice.svg', height: 50, width: 50),
                          SizedBox(
                           height:5
                         ),
                         Text("Notice " , style: GoogleFonts.inter(
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                          color: Colors.white,
                         ),),
                       ],)
                    ),
                  );
                })),

                SizedBox(
                  height:10
                ),

              Padding(
                padding: const EdgeInsets.only(left :16, bottom:16),
                child: Row(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:<Widget> [
                   Text("CLUB :" , style: GoogleFonts.inter(
                     fontSize: 18 ,
                     fontWeight: FontWeight.w700,
                     color: Colors.blueGrey,
                   ),),
                ],),
              ),
                 Container(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(left:16 , right:6),
                  itemCount:7 , 
                  itemBuilder:(context,index){
                  return Padding(
                    padding:const EdgeInsets.only(right:10 , top :10),
                    child: Container(
                       height: 80,
                       width: 100,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                           color: Colors.grey,
                           blurRadius: 2,
                           offset: Offset(2, 2), // Shadow position
                           ),
                           ],                      
                       ),
                       child:Row(children:<Widget> [
                         SizedBox(
                           width:10
                         ),
                        SvgPicture.asset('assets/svg/logo.svg', height: 60, width: 60),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,top:10),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: <Widget>[
                             Text("BDE :" , style: GoogleFonts.inter(
                                fontSize: 18 ,
                                fontWeight: FontWeight.w500,
                                color: DarkBlue,
                               ),),
                              Text("Some description :" , style: GoogleFonts.inter(
                                fontSize: 12 ,
                                fontWeight: FontWeight.w300,
                                color: DarkBlue,
                               ),),
                             
                             
                            
                          ],),
                        ) ,
                           Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top:40 , right:5),
                                  child: Text("22/01/21" , style: GoogleFonts.inter(
                                  fontSize: 12 ,
                                  fontWeight: FontWeight.w300,
                                  color: DarkBlue,
                               ),),
                                ),
                       ],)
                       
                    ),
                  );
                })),
          ]
        ),
      )
    );
  }
}