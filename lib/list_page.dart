import 'package:flutter/material.dart';
import 'package:kucingpedia/model/kucings.dart';



class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'List Kucing',
              style : TextStyle(fontSize: 15), 
            ),
            backgroundColor: Colors.grey[50],
            foregroundColor: Colors.black,
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const KucingGrid(gridCount: 1);
              } else if (constraints.maxWidth <= 1200) {
                return const KucingGrid(gridCount: 4);
              } else {
                return const KucingGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class KucingGrid extends StatelessWidget {
  final int gridCount;

  const KucingGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
       isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: kucingList.map((kucing) {
            return InkWell(
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return ;
              //   }));
              // },
              child : Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        kucing.imageAsset,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        kucing.nama,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        kucing.deskripsi,
                      ),
                    ),

                  ],
                )
              )  
            );
          }).toList(),
        )     
      ) 
    );
  }
}