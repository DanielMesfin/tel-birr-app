import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class BlogCard extends StatelessWidget {
  final Function()? cardCallBack;
  final String slogan;
  final String imageName;
  const BlogCard(
      {super.key,
      required this.slogan,
      required this.imageName,
      required this.cardCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardCallBack,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: GetSize.getScreenHeightDevice(5),
                horizontal: GetSize.getScreenWidthDevice(8)),
            width: GetSize.getScreenWidthDevice(280),
            height: GetSize.getScreenHeightDevice(140),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/${imageName}'),
                    fit: BoxFit.cover),
                color: Colors.redAccent,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 1.5)
                ],
                borderRadius: const BorderRadius.all(Radius.circular(8))),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: GetSize.getScreenWidthDevice(150),
              height: GetSize.getScreenHeightDevice(60),
              decoration: BoxDecoration(
                  color: Colors.indigoAccent.withOpacity(0.7),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(50),),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    slogan,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  const Text(
                    'Money',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
