import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';
import '../../../core/styles/fonts.dart';
import '../../../home_screen/model/home_model.dart';

class HotelInfoWidget extends StatelessWidget {
  const HotelInfoWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final HomeProductModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: greyColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: greyColor.withOpacity(.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sold By', style: gFontsOleo(cl: whiteColor, fw: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: yellowColor.withOpacity(.1),
                child: const Center(
                  child: Icon(
                    Icons.store,
                    color: whiteColor,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  data.productShop.toUpperCase(),
                  style: gFontsOleo(cl: whiteColor, sz: 18),
                  maxLines: 2,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: yellowColor.withOpacity(.1),
                  ),
                ),
                child: Center(
                  child: Text(
                    'VIEW SHOP',
                    style: gFontsOleo(cl: whiteColor),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          LimitedBox(
            maxHeight: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: yellowColor.withOpacity(.1),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Text(
                            '3.6',
                            style: gFontsOleo(cl: greenColor),
                          ),
                          const SizedBox(width: 6),
                          const Icon(
                            Icons.star,
                            color: yellowColor,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '46 Ratings',
                      style: gFontsOleo(cl: whiteColor, sz: 12),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '46',
                      style: gFontsOleo(cl: whiteColor),
                    ),
                    Text(
                      'Followers',
                      style: gFontsOleo(cl: whiteColor, sz: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '4',
                      style: gFontsOleo(cl: whiteColor),
                    ),
                    Text(
                      'Products',
                      style: gFontsOleo(cl: whiteColor, sz: 12),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
