import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/save/save_provider.dart';
import 'package:shoesapp/widgets/mytext.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/bg2.png"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.13), BlendMode.dstATop))),
      child: Consumer<SaveProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    MyText(
                      text: "My Saved Items",
                      c: Colors.white,
                      fsize: 25,
                      w: FontWeight.w500,
                    ),
                    const Icon(
                      Icons.arrow_right,
                      size: 40,
                      color: Color.fromARGB(255, 11, 124, 217),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.saveItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          shadowColor: Colors.white,
                          color: const Color.fromARGB(207, 12, 35, 160),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 120,
                                    child: Image.asset(
                                        value.saveItems[index].saveproduct[0]),
                                  ),
                                  Container(
                                    width: 180,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: value.saveItems[index]
                                                  .saveproduct[1] +
                                              "\n" +
                                              value.saveItems[index]
                                                  .saveproduct[2] +
                                              '\$',
                                          fsize: 20,
                                          w: FontWeight.w100,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.white70,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: IconButton(
                                                  iconSize: 15,
                                                  highlightColor: Colors.black,
                                                  onPressed: () {
                                                    return Provider.of<
                                                                SaveProvider>(
                                                            context,
                                                            listen: false)
                                                        .removeitem(index);
                                                  },
                                                  icon:
                                                      const Icon(Icons.remove)),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          );
        },
      ),
    );
  }
}
