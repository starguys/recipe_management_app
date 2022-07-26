import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: () {},
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://placehold.it/100x100'),
                  )),
            ),
            SizedBox(width: 15),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipe 1',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ))
          ],
        ));
  }
}
