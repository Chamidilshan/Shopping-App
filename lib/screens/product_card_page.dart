import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            // color: Colors.blue,
            child: Stack(
              children: [
                Container(
                  color: Colors.red,
                ),
                Positioned(
                  bottom: 10.0,
                  left: 8.0,
                  child: Container(
                    // width: 100.0,
                    //height: 40.0,
                    padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.white70
                    ),
                    child: Row(
                      children: [
                        Text('4', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text('|'),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text('4.2k', style: TextStyle(fontSize: 12.0),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'T shirt',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                        'Graphic cottom shirt',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    Row(
                      children: [
                        Text('\$ 1200', style: TextStyle(
                            color: Colors.grey,
                          decoration: TextDecoration.lineThrough
                        ),),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text('\$ 1200'),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text('40% OFF', style: TextStyle(
                            color: Colors.orange,
                          fontWeight: FontWeight.w300
                        ),),
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline)
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
