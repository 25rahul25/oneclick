import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_click/values/color_constant.dart';

class ImageConstant {
  static const double avatarRatio = 1;
  static const double docRatioX = 4;
  static const double docRatioY = 5;
  static const int quality = 60;
}

class ImagePickerHelper {
  const ImagePickerHelper._();

  static final ImagePicker _imagePicker = ImagePicker();
  static final ImageCropper _imageCropper = ImageCropper();

  static Future<File?> pickImage(ImageSource imageSource) async {
    final pickedImage = await _imagePicker.pickImage(
      source: imageSource,
      preferredCameraDevice: CameraDevice.front,
    );
    if (pickedImage != null) {
      final croppedFilePath = await _cropImage(pickedImage.path);
      if (croppedFilePath != null) {
        return File(croppedFilePath);
      }
    }
    return null;
  }

  static Future<List<File>?> pickMultiImage(ImageSource imageSource) async {
    final pickedImages = await _imagePicker.pickMultiImage();
    if (pickedImages != null) {
      return List.generate(
        pickedImages.length,
        (index) => File(pickedImages[index].path),
      );
    }
    return null;
  }

  static Future<String?> _cropImage(String imagePath) async {
    final croppedFile = await _imageCropper.cropImage(
      sourcePath: imagePath,
      aspectRatio: const CropAspectRatio(
        ratioX: ImageConstant.docRatioX,
        ratioY: ImageConstant.docRatioY,
      ),
      aspectRatioPresets: [CropAspectRatioPreset.ratio5x4],
      compressQuality: ImageConstant.quality,
      compressFormat: imagePath.endsWith('.png')
          ? ImageCompressFormat.png
          : ImageCompressFormat.jpg,
      uiSettings: [
        AndroidUiSettings(
          statusBarColor: AppColors.primaryColor,
          toolbarWidgetColor: AppColors.whiteColor,
          toolbarColor: AppColors.primaryColor,
          toolbarTitle: 'Crop image',
          cropFrameStrokeWidth: 0,
          showCropGrid: false,
          hideBottomControls: false,
          lockAspectRatio: true,
          initAspectRatio: CropAspectRatioPreset.square,
        ),
        IOSUiSettings(
          hidesNavigationBar: false,
          aspectRatioLockEnabled: true,
          resetButtonHidden: true,
        )
      ],
    );
    return croppedFile?.path;
  }
}
