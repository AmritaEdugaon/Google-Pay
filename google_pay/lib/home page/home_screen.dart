import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_pay/context/card%20text.dart';
import 'package:google_pay/context/circle%20text.dart';
import 'package:google_pay/profile%20page/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    var theme=Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Stack(
              children: [
                 Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: screenWidth/1.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: theme.hintColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.search,color: theme.dividerColor,),
                        SizedBox(width: 10,),
                        Text("Search"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>MyProfile(),));
                    },
                    child: CircleAvatar(
                        maxRadius: 20,
                        backgroundImage: AssetImage("assets/image/img_11.png")
                    ),
                  ),

                ],
              ),
            ),
              ],
            ),
            Stack(children: [
              Opacity(opacity: 0.5,
              child: Image.asset("assets/image/img.png",height: screenHeight/3.5,width: screenWidth,)),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 170),
                    child: Text("Flexible loans,\nwhen you need it",style: TextStyle(color: theme.textTheme.titleLarge!.color,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child: Row(
                      children: [
                        Text("Apply now",style: theme.textTheme.bodySmall,),
                        Icon(CupertinoIcons.arrow_right_circle_fill,color: theme.textTheme.bodySmall!.color,size: 25,)
                      ],
                    ),
                  )
                ],
              )
            ],),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  cardText(text: "Scan any\nQR Code", color: theme.cardColor, icon: Icons.qr_code_scanner, index: 1, theme: theme),
                  cardText(text: "Pay\nanyone", color: theme.cardColor, icon: Icons.currency_rupee, index: 2, theme: theme),
                  cardText(text: "Bank\ntransfer", color: theme.cardColor, icon: Icons.account_balance_outlined, index: 3, theme: theme),
                  cardText(text: "Mobile\nrecharge", color: theme.cardColor, icon: Icons.mobile_screen_share, index: 4, theme: theme),
                ],
              ),
            ),
            SizedBox(height: 20,),
            //Tap&Pay
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20,),
                Container(
                    width: screenWidth/5,
                    height:30,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
                      color: theme.canvasColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Tap & Pay",style: TextStyle(color: theme.textTheme.titleSmall!.color,fontSize: 10),textAlign: TextAlign.center,),
                        Icon(Icons.add_circle_outline,size: 15,color: theme.colorScheme.onSurface,),
                      ],
                    )
                ),
                DottedBorder(
                  radius: Radius.circular(20),
                  borderType: BorderType.RRect,
                  dashPattern: [2,5,],
                  child: SizedBox(
                    child: Text(
                      'Activate UPI Lite',
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Container(
                    width: screenWidth/2,
                    height:30,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
                      color: theme.canvasColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width:10),
                        Text("amritakumarik23351@gmail.com",style: TextStyle(color: theme.textTheme.titleSmall!.color,fontSize: 10),textAlign: TextAlign.center,),
                      ],
                    )
                ),
                ],
              ),
            ),
            SizedBox(height: 25,),

            //People
            Row(
              children: [
                SizedBox(width: 25,),
                Text("People",style: TextStyle(color: theme.textTheme.titleLarge!.color,fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      circleText(text: "Nagma", color: theme.cardColor, index: 1, theme: theme, AssetImage: Image.asset("assets/image/img_10.png",fit: BoxFit.fill,)),
                      circleText(text: "Pooja", color: theme.cardColor, index: 2, theme: theme, AssetImage: Image.asset("assets/image/img_7.png",fit: BoxFit.fill,)),
                      circleText(text: "Hena", color: theme.cardColor, index: 3, theme: theme, AssetImage: Image.asset("assets/image/img_8.png",fit: BoxFit.fill,)),
                      circleText(text: "Rinki", color: theme.cardColor, index: 4, theme: theme, AssetImage: Image.asset("assets/image/img_9.png",fit: BoxFit.fill,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      circleText(text: "Rimi", color: theme.cardColor, index: 1, theme: theme, AssetImage: Image.asset("assets/image/img_11.png",fit: BoxFit.fill,)),
                      circleText(text: "Shalu", color: theme.cardColor, index: 2, theme: theme, AssetImage: Image.asset("assets/image/img_12.png",fit: BoxFit.fill,)),
                      circleText(text: "Putul", color: theme.cardColor, index: 3, theme: theme, AssetImage: Image.asset("assets/image/img_13.png",fit: BoxFit.fill,)),
                      circleText(text: "Simran", color: theme.cardColor, index: 4, theme: theme, AssetImage: Image.asset("assets/image/img_14.png",fit: BoxFit.fill,)),
                    ],
                  ),
                ],
              )
            ),

            //Bills & recharges
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Bills & recharges",style: TextStyle(color: theme.textTheme.titleLarge!.color,fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: screenWidth/3.5,),
                  Expanded(child: Text("Manage",style: TextStyle(color: theme.textTheme.bodySmall!.color,fontSize: 13),)),
                  Icon(Icons.arrow_forward_ios,color: theme.textTheme.bodySmall!.color,size: 15,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 20),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(children: [
                        circleText(text: "HP Gas Cylinder\n(L...", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_15.png",fit: BoxFit.fill,), theme: theme),
                        Positioned(left: 15,top: 0,
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: theme.primaryColorDark,),
                            child: Text("Book now",style: theme.textTheme.labelSmall,textAlign: TextAlign.center,),
                          ),
                        ),
                      ],),
                      Stack(children: [
                        circleText(text: "North Bihar\nPower(NB...", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_16.png",fit: BoxFit.fill,), theme: theme),
                        Padding(
                          padding: const EdgeInsets.only(left:10,),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: theme.badgeTheme.backgroundColor,),
                            child: Text("Overdue",style: theme.textTheme.labelSmall,textAlign: TextAlign.center,),
                          ),
                        ),
                      ],),
                      Stack(children: [
                        circleText(text: "Airtel\nPrepaid", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_17.png",fit: BoxFit.fill,), theme: theme),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10),
                          child: Container(
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: theme.primaryColorDark,),
                            child: Text("Book now",style: theme.textTheme.labelSmall,textAlign: TextAlign.center,),
                          ),
                        ),
                      ],),
                      circleText(text: "Vi Prepaid\n ", color: theme.hintColor, index: 4, AssetImage: Image.asset("assets/image/img_18.png",fit: BoxFit.fill,), theme: theme),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        CircleAvatar(maxRadius: 30,
                          backgroundColor: theme.primaryColorDark,
                          child: Icon(Icons.mobile_screen_share,color: theme.scaffoldBackgroundColor,),
                        ),
                        Text("Mobile\nrecharge",
                          style: TextStyle(color: theme.textTheme.titleMedium!.color),
                          textAlign: TextAlign.center,),
                      ],),
                      Column(children: [
                        CircleAvatar(maxRadius: 30,
                          backgroundColor: theme.primaryColorDark,
                          child: Icon(Icons.tv,color: theme.scaffoldBackgroundColor,),
                        ),
                        Text("DTH/Cable\nTV",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                      ],),
                      Column(children: [
                        CircleAvatar(maxRadius: 30,
                          backgroundColor: theme.primaryColorDark,
                          child: Icon(Icons.lightbulb_outline_sharp,color: theme.scaffoldBackgroundColor,),
                        ),
                        Text("Electricity\n",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                      ],),
                      Column(children: [
                        CircleAvatar(maxRadius: 30,
                          backgroundColor: theme.primaryColorDark,
                          child: Icon(Icons.mobile_screen_share,color: theme.scaffoldBackgroundColor,),
                        ),
                        Text("Postpaid\nmobile",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                      ],)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            //Business
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Businesses",style: TextStyle(color: theme.textTheme.titleLarge!.color,fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(width: screenWidth/2.5,),
                  Expanded(child: Text("Explore",style: TextStyle(color: theme.textTheme.bodySmall!.color,fontSize: 13),)),
                  Icon(Icons.arrow_forward_ios,color: theme.textTheme.bodySmall!.color,size: 15,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    CircleAvatar(maxRadius: 30,
                      backgroundColor: theme.primaryColorDark,
                      child: Text("S",style: TextStyle(color: theme.scaffoldBackgroundColor,fontSize: 20),),),
                      Text("Sudish Sir",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                  ],),
                  Column(children: [
                    CircleAvatar(maxRadius: 30,
                      backgroundColor: theme.primaryColor,
                      child: Text("A",style: TextStyle(color: theme.scaffoldBackgroundColor,fontSize: 20),),),
                    Text("Ajay Sir",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                  ],),
                  Column(children: [
                    CircleAvatar(maxRadius: 30,
                      backgroundColor: theme.primaryColorDark,
                      child: Text("S",style: TextStyle(color: theme.scaffoldBackgroundColor,fontSize: 20),),),
                    Text("Suraj Sir",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                  ],),
                  Column(children: [
                    CircleAvatar(maxRadius: 30,
                      backgroundColor: theme.secondaryHeaderColor,
                      child: Icon(Icons.keyboard_arrow_down_sharp,color: theme.iconTheme.color,),),
                    Text("More",style: TextStyle(color: theme.textTheme.titleMedium!.color),textAlign: TextAlign.center,),
                  ],),
                ],
              ),
            ),

            //Card
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: theme.scaffoldBackgroundColor,
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        SizedBox(width: 5,),
                        Icon(Icons.subscriptions_outlined,color: theme.iconTheme.color,),
                        SizedBox(height: 5,),
                        Text("Subscriptions",style: TextStyle(color: theme.textTheme.titleMedium!.color),),
                        Text("Buy plans from leading\nOTT platforms",style:theme.textTheme.titleMedium,),
                        SizedBox(
                          height:40,
                          child:Stack(
                            children:[
                              CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage("assets/image/img_19.png"),
                               ),
                               Padding(
                                  padding:EdgeInsets.only(left:10),
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage("assets/image/img_20.png"),
                                  ),
                                ),





                            ],
                          ),
                        )
                      ],
                    ) ,
                  ),
                  Card(
                    color: theme.scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        SizedBox(width: 5,),
                        Icon(Icons.card_giftcard,color: theme.iconTheme.color,),
                        SizedBox(height: 5,),
                        Text("Gift cards",style: TextStyle(color: theme.textTheme.titleMedium!.color),),
                        Text("Buy gift cards from the\nbiggest brands",style: theme.textTheme.titleMedium,),
                        SizedBox(
                          height:40,
                          child:Stack(
                            children:[
                              CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage("assets/image/img_21.png"),
                              ),
                              Padding(
                                padding:EdgeInsets.only(left:10),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage("assets/image/img_22.png"),
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.only(left:10),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage("assets/image/img_23.png"),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ) ,
                  ),
                ],
              ),
            ),

            //Offer and Rewards
            Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Offers & rewards",style: TextStyle(color: theme.textTheme.titleLarge!.color,fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      circleText(text: "Rewords", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_24.png",fit: BoxFit.fill,), theme: theme),
                      circleText(text: "Offers", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_25.png",fit: BoxFit.fill,), theme: theme),
                      circleText(text: "Referrals", color: theme.hintColor, index: 2, AssetImage: Image.asset("assets/image/img_26.png",fit: BoxFit.fill,), theme: theme),
                    ]
                  ),
                  SizedBox(height: 15,)
                ],
              ),
            ),
            //big card
            SizedBox(
              width: screenWidth/1.2,
              height: screenHeight/6,
              child: Card(
                 color: theme.scaffoldBackgroundColor,
                child: Row(
                  children: [
                    SizedBox(height: 20,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tuesday Treats!"),
                        Text("@20 cashback, limited to\n1st 10 lakh winners",style: theme.textTheme.titleMedium,),
                        SizedBox(height: 10,),
                        Text("Pay now",style: theme.textTheme.bodySmall,)
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Image.asset("assets/image/img_27.png")
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Text("Manage your money",style: theme.textTheme.titleLarge,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(CupertinoIcons.building_2_fill,color: theme.iconTheme.color,),
                    title: Text("Personal loan",style: theme.textTheme.bodyMedium,),
                    subtitle: Text("instant approval & paperise",style: theme.textTheme.titleMedium,),
                    trailing: Text("Apply now",style: theme.textTheme.bodySmall,),
                  ),
                  ListTile(
                    leading: Icon(Icons.speed,color: theme.iconTheme.color,),
                    title: Text("Check you CIBIL score for free",style: theme.textTheme.bodyMedium,),
                    trailing: Icon(Icons.keyboard_arrow_right,color: theme.dividerColor,),
                  ),
                  ListTile(
                    leading: Icon(Icons.history,color: theme.iconTheme.color,),
                    title: Text("See your transaction history",style: theme.textTheme.bodyMedium,),
                    trailing: Icon(Icons.keyboard_arrow_right,color: theme.dividerColor,),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance_outlined,color: theme.iconTheme.color,),
                    title: Text("Check bank balance",style: theme.textTheme.bodyMedium,),
                    trailing: Icon(Icons.keyboard_arrow_right,color: theme.dividerColor,),
                  )
                ],
              ),
            ),
            // Image.asset("assets/image/img_28.png",fit: BoxFit.fill),
          ]
        ),
            ),
      ),
    );
  }
}
