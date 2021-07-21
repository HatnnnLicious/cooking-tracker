import 'dart:io';
import 'dart:async';
// import 'package:path_provider/path_provider.dart';

class fileIO {
  Future<String> get _localPath async {
/*    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;*/

    final directoryPath = './storage';
    return directoryPath;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.txt');
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    return file.writeAsString('Hello Folks');
  }

  Future<String> readcontent() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      // If there is an error reading, return a default String
      return 'Error';
    }
  }
}