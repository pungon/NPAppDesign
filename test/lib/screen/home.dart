import 'package:flutter/material.dart';
import 'package:test/widgets/sizeDp.dart';
import 'package:test/widgets/icon_text_row.dart';
import 'package:test/widgets/text_viewmore.dart';
import 'package:test/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color:  AppColors.primaryColor,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 400,
              height: 400,
              color: Colors.white,
              child:  Image.asset(
                'assets/images/thai_food1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left:0, 
            top:  SizeDp.dpToPixels(15, context),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: SizeDp.dpToPixels(5, context)),
              child: Container(
                width:  SizeDp.dpToPixels(12, context),
                height:  SizeDp.dpToPixels(12, context),
                padding: EdgeInsets.all(SizeDp.dpToPixels(2, context)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white1.withOpacity(0.5),
                ),
                child:
                 const ImageIcon(
                   AssetImage('assets/images/back.png'),
                  
                ),              
              ),
            ),
          ),
          Positioned(
            right:0, 
            top:  SizeDp.dpToPixels(15, context),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: SizeDp.dpToPixels(5, context)),
              child: Stack(
                children: [
                  Container(
                  width:  SizeDp.dpToPixels(12, context),
                  height:  SizeDp.dpToPixels(12, context),
                  padding: EdgeInsets.all(SizeDp.dpToPixels(2, context)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white1.withOpacity(0.5),
                  ),
                    child: Padding(
                      padding:  EdgeInsets.all(SizeDp.dpToPixels(1, context)),
                      child: const ImageIcon(
                        AssetImage('assets/images/shopping-cart.png'),  
                      ),
                    ),  
                  ),
                  Positioned(
                    right: SizeDp.dpToPixels(1, context),
                    child: Container(
                      padding: EdgeInsets.all(SizeDp.dpToPixels(1, context)),
                      decoration:  BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.white1,
                            width:  SizeDp.dpToPixels(0.5, context),
                          ),
                      ),                 
                      child: Text('2',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white1, fontSize: 10)),
                    ),
                  )
                ],
                
              ),
            ),
          ),
          Positioned(
            right:0, 
            left:0,
            bottom:  SizeDp.dpToPixels(0, context),     
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              padding: EdgeInsets.symmetric(vertical: SizeDp.dpToPixels(10, context), horizontal: SizeDp.dpToPixels(8, context)),
              decoration: const BoxDecoration(
                color: AppColors.white1,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fruit nutrition meal',  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: SizeDp.dpToPixels(5, context)),
                  child: SizedBox(
                    height: SizeDp.dpToPixels(6, context),
                    child: Row(
                      children: [
                        SizedBox(
                          width: SizeDp.dpToPixels(30, context),
                          height: SizeDp.dpToPixels(6, context),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Icon(
                                Icons.star,
                                color: index < 4 ? AppColors.primaryColor : Colors.grey,
                                size: SizeDp.dpToPixels(6, context),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: SizeDp.dpToPixels(5, context),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text('4.5',  style: Theme.of(context).textTheme.titleSmall!.copyWith(color:AppColors.white3)),
                              SizedBox(
                                    width: SizeDp.dpToPixels(5, context),
                              ),
                              Row(
                                children: [
                                  Text('1287',  style: Theme.of(context).textTheme.titleSmall!.copyWith(color:AppColors.white3)),
                                  Text(' comments',  style: Theme.of(context).textTheme.titleSmall!.copyWith(color:AppColors.white3)),
                                ],
                              ),
                          ],),
                        ) 
                      ],
                    ),
                  ),
                ),
              
                SizedBox(
                  height: SizeDp.dpToPixels(8, context),
                  child: Row(
                    children: [
                      IconTextRow(
                        iconData: Icons.circle_outlined,
                        text: 'Normal',
                        iconColor: AppColors.secondaryColor,
                        context: context,
                      ),
                      const Spacer(),
                      IconTextRow(
                        iconData: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.primaryColor,
                        context: context,
                      ),
                      const Spacer(),
                      IconTextRow(
                        iconData: Icons.schedule,
                        text: '32min',
                        iconColor: AppColors.secondaryColor,
                        context: context,
                      ),
                  ],),
                ),
                SizedBox(
                  height: SizeDp.dpToPixels(10, context),
                ),
                Text('Introduce',  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),),
                 SizedBox(
                  height: SizeDp.dpToPixels(5, context),
                ),
                ExpandableText(
                  text: 'The pasta in the pictue USES alkaline noodles, which many people are not very familiar with. The sauce is also very popular with local people. If ', 
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white3)
                ),
                
                
              ],
              ),
            ),
          ),
          Positioned(
            right:0, 
            left:0,
            bottom:  SizeDp.dpToPixels(0, context),     
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
               decoration: const BoxDecoration(
                color: AppColors.white2,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              child: Padding(
                padding: EdgeInsets.all(SizeDp.dpToPixels(10, context)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.white1,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(SizeDp.dpToPixels(5, context)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove,
                                color: AppColors.white3,
                                size: SizeDp.dpToPixels(6, context),
                              ),
                              const Spacer(),
                              Text('2',  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),),
                              const Spacer(),
                              Icon(
                                Icons.add,
                                color: AppColors.white3,
                                size: SizeDp.dpToPixels(6, context),
                              ),

                            ],
                          ),
                        ),
                      )  
                    ),
                    SizedBox(
                      width: SizeDp.dpToPixels(5, context),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: const BoxDecoration(
                          color:  AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(SizeDp.dpToPixels(5, context)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: AppColors.white1,
                                      size: SizeDp.dpToPixels(6, context),
                                    ),
                                    SizedBox(
                                      width: SizeDp.dpToPixels(1, context),
                                    ),
                                    Text('28',  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500, color: AppColors.white1),),
                                    SizedBox(
                                      width: SizeDp.dpToPixels(2, context),
                                    ),
                                    Text('|',  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500, color: AppColors.white1),),
                                    SizedBox(
                                      width: SizeDp.dpToPixels(2, context),
                                    ),
                                    Text('Add to cart',  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500, color: AppColors.white1),),
                                  ],
                                )
                              ),

                            ],
                          ),
                        ),
                        
              
                      )
                    
                    )
                  ],
                ),
              ),
            )
          ),
          Positioned(
            right:SizeDp.dpToPixels(10, context), 
            top:  SizeDp.dpToPixels(92, context),
            child: Container(
              padding: EdgeInsets.all(SizeDp.dpToPixels(2, context)),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor
              ),
              child: const Icon(
                Icons.favorite,
                color: AppColors.white1,
                size: 30.0,
              ),
            ),
          )
        ],
       
      ),
    );
  }
}