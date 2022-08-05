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
              style: TextStyle(fontSize: 15),
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
              if (constraints.maxWidth <= 320) {
                return const KucingGridSmall(gridCount: 1);
              } else if (constraints.maxWidth <= 900) {
                return const KucingGrid(gridCount: 1);
              } else {
                return const KucingGridSmall(gridCount: 3);
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
                    child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        color: Colors.orange[50],
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
                            Card(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              child: Column(children: [
                                Row(children: [
                                  Flexible(
                                    flex: 8,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 10.0,
                                                  bottom: 2.0),
                                              child: Text(
                                                kucing.nama,
                                                style: const TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w500,
                                                  overflow: TextOverflow.ellipsis
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                  top: 0.5,
                                                  bottom: 2.0),
                                              child: Text(
                                                kucing.deskripsi,
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.black38,
                                                  overflow: TextOverflow.ellipsis
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                      // color: Colors.green,
                                      child: Column(children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0,
                                                top: 17.0,
                                                bottom: 10.0),
                                            child: const FavoriteButton(),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ]),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20.0, bottom: 10.0),
                                    child: Text(
                                      "Ciri :" + kucing.ciri,
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black38,
                                        overflow: TextOverflow.ellipsis
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )));
              }).toList(),
            )));
  }
}

class KucingGridSmall extends StatelessWidget {
  final int gridCount;

  const KucingGridSmall({Key? key, required this.gridCount}) : super(key: key);

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
                    child: Container(
                      child: Card(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          color: Colors.orange[50],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex:5,
                                child: Image.asset(
                                  kucing.imageAsset,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                ),
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                child: Column(children: [
                                  Wrap(children: [
                                       Container(
                                        // color: Colors.green,
                                        child: Column(children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  top: 10.0,
                                                  bottom: 5.0),
                                              child: const FavoriteButton(),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10.0,
                                                    bottom: 2.0),
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    kucing.nama,
                                                    style: const TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w500,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 0.5,
                                                    bottom: 2.0),
                                                child: Text(
                                                  kucing.deskripsi,
                                                  style: const TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black38,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                          ]),
                                  ]),
                                  Container(
                                    // color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                             left: 20, right: 20, top: 10.0, bottom: 10.0),
                                        child: Text(
                                          "Ciri :" + kucing.ciri,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black38,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          )
                          )
                    )
                        );
              }).toList(),
            )));
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40.0,
        height: 40.0,
        decoration: new BoxDecoration(
          color: Colors.orange[50],
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.black45,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ));
  }
}
