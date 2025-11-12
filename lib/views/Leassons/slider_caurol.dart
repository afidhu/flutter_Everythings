import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {

  var mySliderList =[
   Container(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: Colors.grey,
     ),

     child: AspectRatio(
         aspectRatio: 16/9,
       child:  Image.asset('images/img1.jpeg'),
     )
   ), Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
     child: AspectRatio(
         aspectRatio: 16/9,
       child: Image.asset('images/img2.jpeg'),
     )
   ), Container(
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img3.jpeg'),
     )
   ), Container(
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img4.jpg'),
     )
   ), Container(
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img5.jpg'),
     )
   ), Container(
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img6.jpg'),
     )
   ), Container(
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img7.jpg'),
     )
   ), Container(
        color: Colors.grey[100],
     child: AspectRatio(
         aspectRatio: 16/9,
       child:     Image.asset('images/img8.jpg'),
     )
   ), Container(
        color: Colors.grey[100],
     child: AspectRatio(
         aspectRatio: 16/9,
       child:    Image.asset('images/img9.jpg'),
     )
   ),

    // Image.asset('images/img2.jpeg'),
    // Image.asset('images/img3.jpeg'),
    // Image.asset('images/img4.jpg'),
    // Image.asset('images/img5.jpg'),
    // Image.asset('images/img6.jpg'),
    // Image.asset('images/img7.jpg'),
    // Image.asset('images/img8.jpg'),
    // Image.asset('images/img9.jpg'),

  ];


  var myCurrentIndex=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Slider Carousel'),
      centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(

              // carouselController: buttonCarouselController,
                items: mySliderList,
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, reason){
                    setState(() {
                      myCurrentIndex =index;
                    });
                  },
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  aspectRatio: 16/9,
                  // animateToClosest: true,
                  // autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayInterval: Duration(seconds: 1),
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                ),



            ),

            // ElevatedButton(
            //   onPressed: () => buttonCarouselController.nextPage(
            //       duration: Duration(milliseconds: 300), curve: Curves.linear),
            //   child: Text('→'),
            // )
            AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              // axisDirection: Axis.vertical,
              count: mySliderList.length,
              effect: WormEffect(
                  spacing:  8.0,
                  // radius:  4.0,
                  // dotWidth:  24.0,
                  // dotHeight:  16.0,
                  // paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  Colors.white,
                  activeDotColor:  Colors.indigo
              ),
            )
          ],
        ),
      ),
    );
  }
}
