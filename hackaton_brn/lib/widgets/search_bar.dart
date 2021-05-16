import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(29.5),
      ),
    );
    //  child: //Text(
    //    "Информацию вы сможете найти на нашем",
    //    style: Theme.of(context)
    //        .textTheme
    //        .display1
    //        .copyWith(fontWeight: FontWeight.w900),
    //  ),
    //);

    //      TextField(
    //    decoration: InputDecoration(
    //      hintText: "Информацию об упражнениях размещена у нас на сайте",
    //      icon: SvgPicture.asset("assets/icons/search.svg"),
    //      border: InputBorder.none,
    //      enabled: false,
    //    ),
    //  ),
    //);
  }
}
