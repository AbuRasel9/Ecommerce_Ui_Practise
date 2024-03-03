import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {

  const SliderItem({
    super.key,
    required this.imgLink, required this.offerText, required this.buttonText,
  });
  final String imgLink;
  final String offerText;
  final String buttonText;



  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
        color: const Color.fromRGBO(123, 129, 232, 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imgLink,height: 128,width: 174,fit: BoxFit.cover,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 29,),
              Text(offerText,style: textTheme.labelSmall),
              const SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){}, child: Text(buttonText))
            ],
          )
        ],
      ),
    );
  }
}
