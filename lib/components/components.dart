import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../view/screens/upload_apnormal_result_screen.dart';
import '../view/screens/upload_result_screen.dart';

defaultTextLable({
  @required String text = '',
  Color Textcolor = Colors.black,
}) =>
    Center(
      child: SizedBox(
        // width: 300,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Textcolor,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
    );

defaultTextButton({
  @required String textButton = '',
  Color textButtonColor = Colors.purple,
  double? fontSize = 20.0,
  Function()? onpressed,
}) =>
    TextButton(
        onPressed: onpressed!,
        child: Text(
          textButton,
          style: TextStyle(
              color: textButtonColor,
              fontSize: fontSize,
              fontFamily: 'montserrat',
              fontWeight: FontWeight.bold),
        ));

imagePage({
  @required image = 'assets/images/',
}) =>
    SvgPicture.asset(image);

textDescription(
        {@required String textDescription = '',
        Color textColor = Colors.black}) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          textDescription,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'montserrat',
            fontSize: 16.0,
            color: textColor,
          ),
        ),
      ),
    );

defaultHomeRow(
    {String rowTitle = '', IconButton? iconButton, Function()? function
    // BuildContext? context,
    }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton(onPressed: function, icon: iconButton!),
      /*const SizedBox(
        width: 90,
      ),*/
      Expanded(
        child: Text(
          rowTitle,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // textButton!,
    ],
  );
}

defaultText({
  @required String text = '',
  dynamic textsize = 12.0,
}) =>
    Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: textsize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ],
    );

defaultFormField({
  TextEditingController? controller,
  final IconData? prefix,
  TextInputType? type,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  String? Function(String?)? validate,
  void Function()? ontap,
  bool isPassword = false,
  bool isClicable = true,
  // required String label,
  String? hintText,
  String? labelText,
  // required IconData prefix,
  Function()? suffixPressed,
  IconData? suffix,
  IconButton? clickedIcon,
}) =>
    TextFormField(
      onTap: ontap,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validate,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        // labelText: label,
        labelText: labelText,
        hintText: hintText,

        hintStyle: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
            color: Colors.grey),
        labelStyle:
            const TextStyle(fontFamily: 'Montserrat', color: Colors.black),
        suffixIcon: clickedIcon,
        prefixIcon: Icon(
          prefix,
          color: Colors.black,
        ),
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        // suffixIcon: suffix != null
        //     ? Icon(
        //         suffix,
        //       )
        //     : null,
        /*  suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: Colors.grey,
                ))
            : null,*/
      ),
    );

defaultClickedButton({
  String text = '',
  Function()? function,
  Function()? onpressed,
}) =>
    InkWell(
      onTap: onpressed,
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Constants.primaryColor, Constants.secondryColor]),
          ),
          child: TextButton(
            onPressed: function,
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          )),
    );

textRow({
  @required final String text = '',
  final String TextedButton = '',
}) =>
    Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              TextedButton,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
              ),
            ))
      ],
    );

discoverDiseasesType({
  String text = '',
}) =>
    Column(
      children: [
        Container(
          child: Image.asset(
            'assets/images/EEG device.jpg',
            width: 180,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
      ],
    );

diseaseType({String text = ''}) => Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[200],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
      ),
    );

recomendedTopDoctors({
  String docname = '',
  String specilality = '',
}) =>
    Container(
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: Row(children: [
        Image.asset('assets/images/profile.jpg'),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: docname,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  TextSpan(
                    text: specilality,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[400],
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text('4.0 . 50 Reviews',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[400],
                      fontSize: 10.0,
                    ))
              ],
            )
          ],
        ),
      ]),
    );

AvailablePatients({
  String patientName = '',
  Color containercolor = Colors.grey,
  String diseasetype = '',
  Color diseasenamecolor = Colors.black,
}) =>
    Container(
      color: containercolor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: patientName,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Cairo',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[200],
                        fontSize: 12.0,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Text(
              diseasetype,
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: diseasenamecolor,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );

defaultAppBar({
  String appBartitle = '',
  IconButton? iconBack,
  TextButton? textButton,
  Function()? onpressed,
  String text = '',
}) =>
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: iconBack,
      centerTitle: true,
      title: Text(
        appBartitle,
        style: const TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      actions: [
        TextButton(
          onPressed: onpressed,
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
        )
      ],
    );

Widget moreDetails(
        {required String titlename, required String namedescription}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titlename,
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Color.fromARGB(255, 236, 227, 227),
            fontSize: 15,
          ),
        ),
        Text(
          namedescription,
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Color.fromARGB(255, 236, 227, 227),
            fontSize: 15,
          ),
        ),
      ],
    );

/*Widget moreDetails({
    required String titlename,
    required String namedescription})=>Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(titlename,
                    
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromARGB(255, 236, 227, 227),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    namedescription,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromARGB(255, 236, 227, 227),
                      fontSize: 15,
                    ),
                  ),
                ],
              ) ;*/
Future<StatelessWidget> pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  PlatformFile file = result!.files.first;

  if (file.name.contains('h')) {
    return const UploadNormalResultPage();
  } else {
    return const UploadApnormalResultPage();
  }
}

Future navigate(BuildContext context) {
  return Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return const UploadNormalResultPage();
    },
  ));
}

class SearchBar extends StatelessWidget {
  Color searchbarcolor;
  String hinttext;
  SearchBar({
    Key? key,
    required this.searchbarcolor,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
        color: searchbarcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: const Icon(Icons.search),
              hintText: hinttext),
        ),
      ),
    );
  }
}
