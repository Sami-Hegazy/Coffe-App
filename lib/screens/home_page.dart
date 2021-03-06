import 'package:coffe/screens/details_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/monthly_coffe_widgets.dart';
import '../widgets/product_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xffF5F0E6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: double.infinity,
                    height: height * 0.223,
                    color: const Color(0xffF5C168),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ngo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Pi    ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Stack(
                      children: [
                        const Center(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Top Pick',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 5,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xffF5C168),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Latest',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Image(
                        image: AssetImage('assets/store.png'),
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Coffe',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const Spacer(),
                        Image.asset('assets/search.png'),
                        const SizedBox(width: 15),
                        Image.asset('assets/filter.png'),
                      ],
                    ),
                    const MonthlyCoffeWidget(),
                    ProductWidget(
                      press: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const DetailsScreen();
                          }),
                        );
                      },
                      price: '6.2',
                      country: 'Indonesia',
                      name: 'Kapal Air',
                      shape: 'assets/shapes2.png',
                      heroTag: 'kapal',
                      productImage: 'assets/pocket 2.png',
                    ),
                    ProductWidget(
                      price: '5.2',
                      country: 'Lembank',
                      name: 'Pine Blank',
                      shape: 'assets/shapes1.png',
                      heroTag: 'pine',
                      productImage: 'assets/pocket 1.png',
                      press: () {},
                    ),
                    ProductWidget(
                      press: () {},
                      price: '5.7',
                      country: 'Japan',
                      name: 'Jco Original',
                      shape: 'assets/shapes3.png',
                      heroTag: 'ico',
                      productImage: 'assets/pocket 3.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
