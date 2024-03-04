import 'package:ecommerce_app/core/home_view/cart_screen/widget/inc_dec_form_feild.dart';
import 'package:ecommerce_app/models/product_models.dart';
import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class CartProductItem extends StatelessWidget {
  final ProductDetail productDetails;

  const CartProductItem({
    super.key,
    required this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),

          //product image
          Image.asset(
            productDetails.productImage,
            width: 100,
            height: 90,
            fit: BoxFit.cover,
          ),
          //product name ,price item count
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //product item details
                        children: [
                          Text(
                            productDetails.productName,
                            style: theme.headlineMedium?.copyWith(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 8,
                          ),

                          //product size and colors
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Color : Black",
                                style: theme.titleSmall?.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Size : XL",
                                style: theme.titleSmall?.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/delete_icon.png",color: Colors.red,

                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //product price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${productDetails.productPrice}",
                        style: theme.titleSmall,
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 40,
                        width: 110,
                        child: IncDecFormFeild(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
