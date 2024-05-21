import 'package:flutter/material.dart';

class KaryaWidget extends StatefulWidget {
  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;
  const KaryaWidget({
    Key?key,
    required this.imgPath,
    required this.name,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);


  @override
  State<KaryaWidget> createState() => _KaryaWidgetState();
}

class _KaryaWidgetState extends State<KaryaWidget> {

  Color getSelectKarya(){
    if (widget.isSelected){
      return Colors.blue.withOpacity(0.3);
    }else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 98,
          width: 67,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(widget.imgPath),
              fit: BoxFit.cover,
            )
          ),
        ),
        InkWell(
          onTap: (){
            widget.tapHandler(widget.name);
          },
          child: Container(
            height: 98,
            width: 67,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: getSelectKarya(),
            ),
          ),
        ),
      ],
    );
  }
}