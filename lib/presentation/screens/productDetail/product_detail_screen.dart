import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_order_summary_widget.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_payment_container_widget.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_product_detail_container_widget.dart';
import 'package:restaurant_app_week1/utils/color.dart';
import 'package:restaurant_app_week1/utils/constants.dart';
class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int counter =0;
  int incrementCounter(){
    int updatedCounter=counter+1;
    return updatedCounter;
  }
  int decrementCounter(){
    int updatedCounter=counter-1;
    return updatedCounter;
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:black,
      body:  SizedBox(
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
                height: 400,
                width: size.width,
                child: Image.asset("assets/images/cofee.jpg",fit: BoxFit.cover,)),
            buildBackButton(),

            BuildProductDetailsContainerWidget(size: size),
            Positioned(
              top: 265,
              right: 30,
              child: Container(
                decoration: BoxDecoration(
                    color: grey,

                    borderRadius: BorderRadius.circular(20)
                ),
                height: 160,
                width: 85,
                child: Padding(
                  padding:  const EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding/2),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     buildItemCountIconContainer(icon:Icons.add,isAdd: true),
                     CircleAvatar(
                       backgroundColor: Colors.white.withOpacity(0.3),
                       child:  Text(counter.toString(),style: const TextStyle(color: white,fontWeight: FontWeight.w700),),
                     ),
                     buildItemCountIconContainer(icon:Icons.minimize ,isAdd: false),

                    ],
                  ),
                ),
              ),
            ),
            const BuildOrderSummaryWidget(),
            const BuildPaymentContainerWidget()
          ],
        ),
      ),
    );
  }

  CircleAvatar buildItemCountIconContainer({required IconData icon,required bool isAdd}) {
    return CircleAvatar(
                     backgroundColor: primaryColor,
                     radius: 15,
                     child: Center(
                       child: IconButton(
                         padding: EdgeInsets.only(bottom: isAdd?0:20,top: 0),
                         onPressed: (){
                           if(isAdd){
                             setState(() {
                               counter=incrementCounter();
                             });
                           }else{
                             if(counter!=0){
                               setState(() {
                                 counter=decrementCounter();
                               });
                             }
                           }
                         },
                         icon:Icon(icon,color: white,size: 20,),
                       ),
                     ),
                   );
  }

  Positioned buildBackButton() {
    return Positioned(
            top: 70,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child:  Padding(
                padding: const EdgeInsets.all(appPadding/6),
                child: Center(child: IconButton(
                  padding: const EdgeInsets.only(left: 7),
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_back_ios,color: white),
                  )),
              ),
            ),
          );
  }
}











