import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/list_business_screen/third_screen.dart';
import '../../values/radius_constant.dart';
import '../../utils/ui/app_text_style.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_text_with_background.dart';


class SetTimer extends StatefulWidget {
  const SetTimer({super.key});

  @override
  State<SetTimer> createState() => SetTimerState();
}

class SetTimerState extends State<SetTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const CustomBackButton(
            padding: EdgeInsets.all(RadiusConstants.borderRadius8),
          ),
        ),
        title: CustomTextWithBackground(
          text: 'Free Listing',
          textStyle: AppTextStyles.poppinsB2,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
             const SizedBox(height: 70,),
            const   Center(child: Text("Set Your Time(Hour)",style: TextStyle(fontSize: 21,color: Color(0xff00818A),fontWeight: FontWeight.w600),)),
            const  SizedBox(height: 15,),
              Text("Pick a time of the day, when you would",style:TextStyle(fontSize:15, fontWeight: FontWeight.w500,color: Colors.grey.shade600 ),),
              Text("like schedule a work routine",style:TextStyle(fontSize:15, fontWeight: FontWeight.w500,color: Colors.grey.shade600 ),),
        
             const SizedBox(height: 70,),
         const    Column(
              children: [
                  Padding(
                  padding:   EdgeInsets.symmetric(horizontal: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("09: 00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                          Text("AM",style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ],
                      ),
                      Text("to",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                      Row(
                        children: [
                          Text("06: 00",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                          Text("AM",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6,),
               Text("set all day",style: TextStyle(color: Colors.grey,fontSize: 12),),

              SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("S",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                 SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("M",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("T",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("W",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("T",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("F",style: TextStyle(color: Colors.grey,fontSize: 12),)),

                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Center(child: Text("S",style: TextStyle(color: Colors.grey,fontSize: 12),)),
                    ),

                  ],
                ),


              ],
            ),
             const  SizedBox(height: 280,),
              CustomGradientButton(
                height: 50,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ListBusinessScreen3(),));
                },
                text: 'Next',
                inProgress: false,
                isVertical: true,
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
