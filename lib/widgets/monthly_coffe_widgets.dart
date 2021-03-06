import 'package:flutter/material.dart';

class MonthlyCoffeWidget extends StatelessWidget {
  const MonthlyCoffeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
              color: Color(0xffF5F0E6),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Monthly\nCoffe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Text(
                      '\$12.9',
                      style: TextStyle(
                        color: Color(0xffE4886C),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      '/Mounth',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            top: -20,
            bottom: 10,
            child: Image.asset('assets/box.png'),
          ),
        ],
      ),
    );
  }
}
