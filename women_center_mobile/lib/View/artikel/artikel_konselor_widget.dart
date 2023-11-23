//create artikel konselor widget
import 'package:flutter/material.dart';

//widget serach
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 42,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 14,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: const Stack(children: []),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Cari artikel',
            style: TextStyle(
              color: Color(0xFFA5A5A5),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.15,
            ),
          ),
        ],
      ),
    );
  }
}

//   child: Column(
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: [
    //           TextFormField(
    //             decoration: InputDecoration(
    //               labelText: 'Cari artikel',
    //               prefixIcon: Icon(
    //                 Icons.search,
    //                 color: Color(0xFF979797),
    //               ),
    //               filled: true,
    //               fillColor: Colors.white,
    //               contentPadding: EdgeInsets.all(10),
    //               border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(30),
    //                   borderSide: BorderSide.none),
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );