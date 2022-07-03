
enum ProjectImagePaths{
  titlePicture,
}

extension ProjectImagePathExtension on ProjectImagePaths{
  String path(){
    switch (this) { 
      case ProjectImagePaths.titlePicture:
        return 'assets/images/title_picture.webp';
    }
  }
}