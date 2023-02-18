import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../image_upload_screen/image_uploade_screen.dart';

enum Carddiseases { schizoprhenia, epilepsy, elzheimar }

class DiseasesCategoryScreen extends StatefulWidget {
  const DiseasesCategoryScreen({Key? key}) : super(key: key);

  @override
  _DiseasesCategoryScreenState createState() => _DiseasesCategoryScreenState();
}

class _DiseasesCategoryScreenState extends State<DiseasesCategoryScreen> {
  Carddiseases? carddiseases;
  int currrentCount = -1;
  List diseases = ['Schizophrenia', 'Epilepsy', 'Alzehimer'];
  List diseasesImages = [
    'assets/images/schizophrenia (1).png',
    'assets/images/epilepsy (1).png',
    'assets/images/alzheimer.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    // color: FlutterFlowTheme.of(context).primaryText,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .050,
                ),
                Text(
                  'What Do You Suffer?',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),

            /*   Container(
             // width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 210, 208, 208),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: 'Search'),
                ),
              ),
            ),*/
            SizedBox(
              height: MediaQuery.of(context).size.height * .070,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .53,
              margin: const EdgeInsets.only(right: 5, left: 5, bottom: 40),
              child: GridView.builder(
                itemBuilder: ((context, index) => Diseasecard(
                      diseaseimage: diseasesImages[index],
                      diseasename: diseases[index],
                      function: () {
                        setState(() {
                          currrentCount = index;
                        });
                      },
                      isSelected: currrentCount == index,
                    )),
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 7 / 6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 230),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.primaryColor,
              ),
              width: 380,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImageUploadePage(),
                      ));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}

class Diseasecard extends StatelessWidget {
  final String diseaseimage;
  final String diseasename;
  final bool isSelected;
  final Function() function;

  Diseasecard({
    required this.diseaseimage,
    required this.diseasename,
    required this.isSelected,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: isSelected ? Constants.secondryColor : Colors.grey),
          borderRadius: BorderRadius.circular(20),
          /* image: DecorationImage(
            image: AssetImage(diseaseimage),
          ),*/
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset(
              diseaseimage,
              fit: BoxFit.cover,
              color: isSelected ? Constants.secondryColor : Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .010),
            Text(
              diseasename,
              style: TextStyle(
                  fontSize: 20,
                  color: isSelected ? Constants.secondryColor : Colors.black),
            ),
          ]),
        ),
      ),
    );
  }
}
