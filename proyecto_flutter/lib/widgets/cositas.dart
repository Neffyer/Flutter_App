import 'package:flutter/material.dart';
import 'package:proyecto_flutter/api/film_api.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/film_class_item.dart';

class Cositas extends StatelessWidget {
  const Cositas({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      //SE PETA AL CARGAR LA API DOS VECES      
      // children: [
      //   const SizedBox(height: 20),
      //    Padding(
      //         padding: const EdgeInsets.only(top: 290.0),
      //         child: FutureBuilder(
      //           future: apiLoadPhoto(),
      //           builder: (
      //             BuildContext context,
      //             AsyncSnapshot<List<Film>> snapshot,
      //           ) {
      //             if (!snapshot.hasData) {
      //               return const Center(
      //                 child: CircularProgressIndicator(),
      //               );
      //             }
      //             final userList = snapshot.data!;
      //             return ListView.builder(
      //               itemCount: userList.length,
      //               itemBuilder: (BuildContext context, int index) {
      //                 return FilmListItem(film: userList[index]);
      //               },
      //             );
      //           },
      //         ),
      //       ),
      // ],
       children: [
       ],
    );
  }
}