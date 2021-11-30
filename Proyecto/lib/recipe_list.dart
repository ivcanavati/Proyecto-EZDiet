/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dataModel/recipe.dart';
import 'dao/recipeDao.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class RecipeListState extends State<RecipeList> {
  TextEditingController _recipeControllerUser = TextEditingController();
  TextEditingController _recipeControllerType = TextEditingController();
  TextEditingController _recipeControllerProcess = TextEditingController();
  TextEditingController _recipeControllerIngredientes = TextEditingController();
  TextEditingController _recipeControllerTitle = TextEditingController();

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => _scrollToBottom());

    return Scaffold(
      appBar: AppBar(
        title: const Text('RayChat'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _getRecipeList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(children: [
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _recipeControllerTitle,
                          onChanged: (text) => setState(() {}),
                          onSubmitted: (input) {
                            //_sendRecipe();
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter new recipe'),
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _recipeControllerUser,
                          onChanged: (text) => setState(() {}),
                          onSubmitted: (input) {
                            //_sendRecipe();
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter new recipe'),
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _recipeControllerType,
                          onChanged: (text) => setState(() {}),
                          onSubmitted: (input) {
                            // _sendRecipe();
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter new recipe'),
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _recipeControllerProcess,
                          onChanged: (text) => setState(() {}),
                          onSubmitted: (input) {
                            //_sendRecipe();
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter new recipe'),
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _recipeControllerIngredientes,
                          onChanged: (text) => setState(() {}),
                          onSubmitted: (input) {
                            //_sendRecipe();
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter new recipe'),
                        ),
                      ]),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(_canSendRecipe()
                        ? CupertinoIcons.arrow_right_circle_fill
                        : CupertinoIcons.arrow_right_circle),
                    onPressed: () {
                      _sendRecipe();
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _sendRecipe() {
    if (_canSendRecipe()) {
      final recipe = Recipe(
          _recipeControllerUser.text,
          _recipeControllerTitle.text,
          _recipeControllerType.text,
          _recipeControllerIngredientes.text,
          _recipeControllerProcess.text,
          DateTime.now());
      widget.recipeDao.saveRecipe(recipe);
      _recipeControllerUser.clear();
      _recipeControllerTitle.clear();
      _recipeControllerType.clear();
      _recipeControllerProcess.clear();
      _recipeControllerIngredientes.clear();
      setState(() {});
    }
  }

  /*Widget _getRecipeList() {
    return Expanded(
      child: FirebaseAnimatedList(
        controller: _scrollController,
        query: widget.recipeDao.getRecipeQuery(),
        itemBuilder: (context, snapshot, animation, index) {
          final json = snapshot.value as Map<dynamic, dynamic>;
          final recipe = Recipe.fromJson(json);
          return RecipeWidget(recipe.user, recipe.title, recipe.type,
              recipe.process, recipe.ingredientes);
        },
      ),
    );
  }

  bool _canSendRecipe() => _recipeController.text.length > 0;*/

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }
}

class RecipeList extends StatefulWidget {
  RecipeList({Key? key}) : super(key: key);

  final recipeDao = RecipeDao();

  @override
  RecipeListState createState() => RecipeListState();
}*/
