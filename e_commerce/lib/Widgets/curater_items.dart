import 'package:e_commerce/Models/model.dart';
import 'package:e_commerce/Utils/colors.dart';
import 'package:flutter/material.dart';

class CuratedItems extends StatelessWidget {
  final AppModel eCommerceItems;
  final Size size;

  const CuratedItems({
    super.key,
    required this.eCommerceItems,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: fbackgroundColor2,
            image: DecorationImage(
              image: AssetImage(eCommerceItems.image),
              fit: BoxFit.cover,
            ),
          ),
          height: size.height * 0.25,
          width: size.width * 0.5,
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black45,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "eComm",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black45,
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 70,
                  ),
                  child: Icon(Icons.star, color: Colors.yellow, size: 18),
                ),
                SizedBox(width: 4), 
                Text(eCommerceItems.rating.toString()),
                Text(
                  " / ${eCommerceItems.review}",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: size.width * 0.5,
          child: Text(
            eCommerceItems.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "Rs.${eCommerceItems.price.toString()}.00",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1.5,
                color: Colors.red.shade500,
              ),
            ),
            SizedBox(width: 5),
            if (eCommerceItems.isCheck == true)
              Text(
                "Rs.${eCommerceItems.price + 1000}.00",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black26,
                  color: Colors.black26,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
