import 'package:flutter/material.dart';
import 'package:women_center_mobile/style.dart';

class PaymentWidget2 extends StatelessWidget {
  const PaymentWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 23, right: 23, bottom: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.pink.shade200,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Virtual Account',
                  style: defaultB.copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '123456789',
                      style: defaultB,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.copy),
                    ),
                  ],
                ),
                Text(
                  'Virtual Account Name',
                  style: defaultB.copyWith(fontWeight: FontWeight.bold),
                ),
                Text('Femina Care'),
                SizedBox(height: 5),
                Text(
                  'Total',
                  style: defaultB.copyWith(fontWeight: FontWeight.bold),
                ),
                Text('Rp. 750.000', style: defaultB),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/mandiri.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
