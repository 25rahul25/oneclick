import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
               SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "User Review & Rating ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "100% Authenticated & Trusted ratings from ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "OneClick users",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          gradient:const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff74CC7E), Color(0xff00818A)]),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        "4.3",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    "React Rating",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow:const [
                          BoxShadow(
                              color: Colors.greenAccent,
                              spreadRadius: 1,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child: const Center(
                        child: Text("4.5",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow:const [
                          BoxShadow(
                              color: Colors.greenAccent,
                              spreadRadius: 1,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child:const Center(
                        child: Text("4.0",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow:const [
                          BoxShadow(
                              color: Colors.greenAccent,
                              spreadRadius: 1,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child:const Center(
                        child: Text("5.0",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow:const [
                          BoxShadow(
                              color: Colors.greenAccent,
                              spreadRadius: 1,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child:const Center(
                        child: Text("4.1",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black))),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context, index) {
                      return  Container(
                        margin:const EdgeInsets.symmetric(vertical: 10),
                        padding:const EdgeInsets.only(left: 10, top: 15),
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            boxShadow:const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 2,
                                  spreadRadius: 0.2)
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20.sp,
                                  backgroundImage: const AssetImage(
                                      "assets/temp/dummy_profile_image.png"),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Sana Sheth ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 150,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "100 review,38 followers",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 65,
                                        ),
                                        Text(
                                          "5 min ago",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            const Text(
                              "Lorem ipsum Lorem ipsum  Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsum Lorem ipsum...",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },),
              )

            ],
          ),
        ),
      ),
    );
  }
}
