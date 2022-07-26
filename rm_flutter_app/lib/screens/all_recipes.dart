import 'package:flutter/cupertino.dart';

import '../widgets/no_recipes.dart';
import '../widgets/recipe_list_title.dart';

class AllRecipesScreen extends StatelessWidget {
  const AllRecipesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('All Recipes'),
            trailing: CupertinoButton(
              padding: const EdgeInsets.all(5),
              onPressed: () {
                Navigator.pushNamed(context, '/new');
              },
              child: Icon(
                CupertinoIcons.plus_rectangle_fill,
                size: 30,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              RecipeListTile(),
              NoRecipes(),
            ],
          ))
        ],
      ),
    );
  }
}
