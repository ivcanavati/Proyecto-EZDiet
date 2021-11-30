import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class RecipeForm extends StatefulWidget {
  @override
  _RecipeFormState createState() => _RecipeFormState();
}

class _RecipeFormState extends State<RecipeForm> {
  final _keyForm = GlobalKey<FormState>(); // Our created key
  final userController = TextEditingController();
  final titleController = TextEditingController();
  final typeController = TextEditingController();
  final ingredientesController = TextEditingController();
  final processController = TextEditingController();
  var _image = null;
  ImagePicker picker = ImagePicker();

  _imgFromCamera() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = File(image!.path);
    });
  }

  _imgFromGallery() async {
    XFile? image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image!.path);
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // The form widget
    return new Scaffold(
      body: Form(
        key: _keyForm,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffFDCF09),
                        child: _image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(
                                  _image!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fitHeight,
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(50)),
                                width: 100,
                                height: 100,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey[800],
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Ingresa los campos de la nueva receta.'),
              ),
              TextFormField(
                controller: userController,
                decoration: InputDecoration(hintText: 'Nombre del Creador'),
              ),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(hintText: 'Titulo'),
              ),
              TextFormField(
                controller: typeController,
                decoration: InputDecoration(hintText: 'Tipo'),
              ),
              TextFormField(
                controller: ingredientesController,
                decoration: InputDecoration(hintText: 'Ingredientes'),
              ),
              TextFormField(
                controller: processController,
                maxLines: null,
                decoration: InputDecoration(hintText: 'Preparacion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
