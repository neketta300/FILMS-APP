import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:move_db/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.drStrange).existsSync(), isTrue);
    expect(File(AppImages.gratefullCentury).existsSync(), isTrue);
    expect(File(AppImages.harryPoter).existsSync(), isTrue);
    expect(File(AppImages.ironManPoster).existsSync(), isTrue);
    expect(File(AppImages.krisHemsvort).existsSync(), isTrue);
    expect(File(AppImages.spell).existsSync(), isTrue);
    expect(
        File(AppImages.topHeaderDoctorStrangeSuperheroMarvelStudio)
            .existsSync(),
        isTrue);
    expect(File(AppImages.topHeaderTransformersOne).existsSync(), isTrue);
    expect(
        File(AppImages.transformersOneBritishMoviePoster).existsSync(), isTrue);
  });
}
