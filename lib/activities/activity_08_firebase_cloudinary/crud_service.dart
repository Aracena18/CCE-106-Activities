import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:image_picker/image_picker.dart';

class PickedImage {
  final File file;
  final String url;

  PickedImage({
    required this.file,
    required this.url,
  });
}

class CrudService {
  final CollectionReference items =
      FirebaseFirestore.instance.collection('items');

  final CloudinaryPublic _cloudinary = CloudinaryPublic(
    'xfas6hdb',
    'flutter_notes_preset',
    cache: false,
  );

  final ImagePicker _picker = ImagePicker();

  Future<PickedImage?> pickImageForAddItem() async {
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile == null) {
      return null;
    }

    final file = File(pickedFile.path);

    final response = await _cloudinary.uploadFile(
      CloudinaryFile.fromFile(
        file.path,
        resourceType: CloudinaryResourceType.Image,
      ),
    );

    return PickedImage(
      file: file,
      url: response.secureUrl,
    );
  }

  Future<void> addItemWithImage(
    String name,
    int quantity,
    String? imageUrl,
  ) async {
    await items.add({
      'name': name,
      'quantity': quantity,
      'image_url': imageUrl,
      'createdAt': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getItems() {
    return items.snapshots();
  }

  Future<void> updateItem(
    String id,
    String name,
    int quantity,
  ) async {
    await items.doc(id).update({
      'name': name,
      'quantity': quantity,
    });
  }

  Future<void> deleteItem(String id) async {
    await items.doc(id).delete();
  }
}
