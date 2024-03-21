import 'package:tahir_portfolio/res/constants.dart';

class SkillModel {
  final String? name;
  final String? image;

  SkillModel({
    this.name,
    this.image,
  });
}

List<SkillModel> skillsList = [
  SkillModel(
    name: 'Flutter',
    image: skillflutter,
  ),
  SkillModel(
    name: 'Dart',
    image: skilldart,
  ),
  SkillModel(
    name: 'Provider State Management',
    image: skillprovider,
  ),
  SkillModel(
    name: 'Bloc State Management',
    image: skillbloc,
  ),
  SkillModel(
    name: 'Firebase',
    image: skillfirebase,
  ),
  SkillModel(
    name: 'Google Cloud',
    image: skillgooglecloud,
  ),
  SkillModel(
    name: 'Google Map',
    image: skillgooglemap,
  ),
  SkillModel(
    name: 'Figma',
    image: skillfigma,
  ),
  SkillModel(
    name: 'Adobe XD',
    image: skillxd,
  ),
  SkillModel(
    name: 'Photoshop',
    image: skillphotoshop,
  ),
];
