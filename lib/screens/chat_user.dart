import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/widgets/custom_text_field.dart';

class ChatUser extends StatefulWidget {
  const ChatUser({super.key});

  @override
  State<ChatUser> createState() => _ChatUserState();
}

class _ChatUserState extends State<ChatUser> {
  TextEditingController cheatcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height:10.h,),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 50.h,
                  child:Row(
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 50.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset('assets/temp/dummy_profile_image.png')),
                      ),
                      SizedBox(width: 10.w,),
                      const Text("Maria Seth",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
                    ],
                  ) ,
                ),
              ),
              const Divider(height: 1,color: Colors.black26,),
              SizedBox(height: 30.h,),
              SizedBox(
                height: 131.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    SizedBox(
                      height:131.h,
                      width: 40.w,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child:ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/temp/dummy_profile_image.png')) ,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 37.h,
                              width: 176.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff74CC7E),
                              ),
                              child: const Center(child: Text("omg, this is amazing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 87.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff74CC7E),
                          ),
                          child: const Center(child: Text("perfect!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),
                        ),

                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 188.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff74CC7E),
                          ),
                          child: const Center(child: Text("Wow, this is really epic",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 37.h,
                    width: 127.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff00818A)
                    ),
                    child: const Center(child: Text("How are you?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/temp/webearlprofile.png')),
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 84.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    SizedBox(
                      height:84.h,
                      width: 40.w,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child:ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/temp/dummy_profile_image.png')) ,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 37.h,
                              width:191.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff74CC7E),
                              ),
                              child: const Center(child: Text("just ideas for next time",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 173.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff74CC7E),
                          ),
                          child: const Center(child: Text("I'll be there in 2 mins !",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 131.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 37.h,
                          width: 107.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff00818A),
                          ),
                          child: const Center(child: Text("woohoooo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 128.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff00818A),
                          ),
                          child: const Center(child: Text("Haha oh man",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white))),
                        ),

                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 178.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff00818A),
                          ),
                          child: const Center(child: Text("Haha that's terrifying",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white))),
                        ),
                      ],
                    ),
                    Container(
                      height: 131.h,
                      width: 40,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/temp/webearlprofile.png')) ,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 131.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      height:131.h,
                      width: 40.w,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child:ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/temp/dummy_profile_image.png')) ,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 37.h,
                              width: 65.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff74CC7E),
                              ),
                              child: const Center(child: Text("aww",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 176.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff74CC7E),
                          ),
                          child: const Center(child: Text("omg, this is amazing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),
                        ),

                        SizedBox(height: 10.h,),
                        Container(
                          height: 37.h,
                          width: 107.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff74CC7E),
                          ),
                          child: const Center(child: Text("woohoooo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 37.h,
                    width: 107.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff00818A)
                    ),
                    child: const Center(child: Text("woohoooo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/temp/webearlprofile.png')),
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              CustomTextField(
                controller: cheatcontroller,
                hintText: "Type a message...",
                minLenghth: 8,
                suffix: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Image.asset('assets/temp/one_share.png',height: 23,)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
