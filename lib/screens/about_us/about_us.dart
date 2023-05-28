import 'package:flutter/material.dart';
import 'package:my_greenbasket/widgets/big_text.dart';
import 'package:my_greenbasket/widgets/expandable_text_widget.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colo,
        title: const Text(
          "About Us !",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(Dimensions.radius20),
          //       topRight: Radius.circular(Dimensions.radius20),
          //     ),
          //     color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Introduce"),
              const SizedBox(height: 20),
              // Expandable text widget
              const Expanded(
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: ExpandableTextWidget(
                      text:
                          "Welcome to My Green Basket, a revolutionary Flutter application dedicated to providing you with the freshest and highest quality fruits, vegetables, nuts, herbs, and shakes. We are passionate about promoting healthy living and offering convenient solutions for your daily nutritional needs.\nAt My Green Basket, we believe that what you put into your body matters. That's why we have curated a diverse range of locally sourced, organic produce to ensure that you and your family can enjoy the best nature has to offer. Our team of dedicated experts carefully selects each item, guaranteeing freshness, taste, and nutrition in every bite.\nWe understand the challenges of maintaining a healthy lifestyle in today's fast-paced world. That's why we have designed our Flutter application to make your shopping experience seamless and enjoyable. With just a few taps, you can browse through our extensive catalog, customize your orders, and have them conveniently delivered right to your doorstep.\nWe take pride in our commitment to sustainability. As advocates for the environment, we prioritize eco-friendly packaging and support sustainable farming practices. By choosing My Green Basket, you not only prioritize your health but also contribute to a greener future for generations to come.\nOur dedication to customer satisfaction is unwavering. We strive to provide you with exceptional service, ensuring that your orders are handled with care and delivered promptly. Our friendly and knowledgeable customer support team is always available to assist you with any queries or concerns you may have.\nJoin us on this journey towards a healthier and more sustainable lifestyle. Discover the joy of fresh, wholesome produce delivered directly to your door. Experience the convenience and reliability of My Green Basket today.\nThank you for choosing My Green Basket!\n\nWarm regards,\n\nDeepanshu Rajput \nFounder, My Green Basket\n\n"),
                ),
              )
            ],
          )),
    );
  }
}
