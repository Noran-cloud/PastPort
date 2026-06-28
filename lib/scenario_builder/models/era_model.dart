import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';

class EraModel {
  final int id;
  final String cover;
  final String title;
  final String subTitle;
  final String headTitle;
  final String description;
  final List<String> images;
  final List<String> placesImages;
  final List<String> placesNames;
  final List<String> roleImages;
  final List<String> goalImages;

  EraModel({
    required this.id,
    required this.cover,
    required this.title,
    required this.subTitle,
    required this.headTitle,
    required this.description,
    required this.images,
    required this.placesImages,
    required this.placesNames,
    required this.roleImages,
    required this.goalImages,
  });
}



List<EraModel> eras = [
  EraModel(
    id: 1,
    cover: Assets.ancientEgyptEraCover,
    title: AppStrings.ancientEgyptTitleText,
    subTitle: AppStrings.ancientEgyptDescText,
    description: AppStrings.ancientEgyptDescriptionScreenText,
    headTitle: AppStrings.ancientEgyptHeaderScreenText,
    images: const [
      Assets.ancientEgyptDetails_1,
      Assets.ancientEgyptDetails_2,
      Assets.ancientEgyptDetails_3,
      Assets.ancientEgyptDetails_4,
    ],
    placesImages: const
    [
      Assets.pyramidsLocationImage,
      Assets.karnakTemplateImage,
      Assets.valleyKingsLocationImage,
      Assets.hatshepsutTemplateLocationImage,
    ],
    placesNames: const [
      AppStrings.gizaPyramidsText,
      AppStrings.karnakTemplateText,
      AppStrings.vallyKingsText,
      AppStrings.hatshepsutTemplateText,
    ],
    roleImages: const
    [
      Assets.historicalRoleEgypt,
      Assets.citizenRoleEgypt,
      Assets.characterRoleEgypt,
      Assets.visitorRoleEgypt,
    ],
    goalImages: const
    [
      Assets.educationalGoalImageEgypt,
      Assets.explorationGoalImageEgypt,
      Assets.culturalGoalImageEgypt,
    ],
  ),

  EraModel(
    id: 2,
    cover: Assets.romanEmpireCover,
    title: AppStrings.romanEmpireTitleText,
    subTitle: AppStrings.romanEmpireDescText,
    description: AppStrings.romanEmpireDescriptionScreenText,
    headTitle: AppStrings.romanEmpireHeaderScreenText,
    images: [
      Assets.romanEmpireDetails_1,
      Assets.romanEmpireDetails_2,
      Assets.romanEmpireDetails_3,
      Assets.romanEmpireDetails_4,
    ],
    placesImages: const
    [
      Assets.colosseumLocationImage,
      Assets.pantheonLocationImage,
      Assets.romanForumLocationImage,
      Assets.pompeiiLocationImage,
    ],
    placesNames: const [
      AppStrings.colosseumRomanText,
      AppStrings.pantheonRomanText,
      AppStrings.romanForumRomanText,
      AppStrings.pompeiiRomanText,
    ],
    roleImages: const
    [
      Assets.historicalRoleImageRoman,
      Assets.citizenRoleImageRoman,
      Assets.characterRoleImageRoman,
      Assets.visitorRoleImageRoman,
    ],
    goalImages: const
    [
      Assets.educationalGoalImageRoman,
      Assets.explorationGoalImageRoman,
      Assets.culturalGoalImageRoman,
    ],
  ),

  EraModel(
    id: 3,
    cover: Assets.ancientChinaEraCover,
    title: AppStrings.ancientChinaTitleText,
    subTitle: AppStrings.ancientChinaDescText,
    description: AppStrings.ancientChinaDescriptionScreenText,
    headTitle: AppStrings.ancientChinaHeaderScreenText,
    images: [
      Assets.ancientChinaDetails_1,
      Assets.ancientChinaDetails_2,
      Assets.ancientChinaDetails_3,
      Assets.ancientChinaDetails_4,
    ],
    placesImages: const
    [
      Assets.greatWallPlace,
      Assets.forbiddenCityPlace,
      Assets.terracottaArmyPlace,
      Assets.heavenTemplatePlace,
    ],
    placesNames: const [
      AppStrings.greatWallText,
      AppStrings.forbiddenCityText,
      AppStrings.terracottaText,
      AppStrings.heavenTemplateText,
    ],
    roleImages: const
    [
      Assets.historicalRoleChina,
      Assets.citizenRoleChina,
      Assets.characterRoleChina,
      Assets.visitorRoleChina,
    ],
    goalImages: const
    [
      Assets.educationalGoalImageChina,
      Assets.explorationGoalImageChina,
      Assets.culturalGoalImageChina,
    ],
  ),

  EraModel(
    id: 4,
    cover: Assets.ancientGreeceEraCover,
    title: AppStrings.ancientGreeceTitleText,
    subTitle: AppStrings.ancientGreeceDescText,
    description: AppStrings.ancientGreeceDescriptionScreenText,
    headTitle: AppStrings.ancientGreeceHeaderScreenText,
    images: [
      Assets.ancientGreeceDetails_1,
      Assets.ancientGreeceDetails_2,
      Assets.ancientGreeceDetails_3,
      Assets.ancientGreeceDetails_4,
    ],
    placesImages: const
    [
      Assets.acropolisAthensPlace,
      Assets.forbiddenCityGreecePlace,
      Assets.olympiaPlace,
      Assets.epidaurusTheatrePlace,
    ],
    placesNames: const [
      AppStrings.acropolisAthensText,
      AppStrings.forbiddenCityGreeceText,
      AppStrings.olympiaText,
      AppStrings.epidaurusTheatreText,
    ],
    roleImages: const
    [
      Assets.historicalRoleGreece,
      Assets.citizenRoleGreece,
      Assets.characterRoleGreece,
      Assets.visitorRoleGreece,
    ],
    goalImages: const
    [
      Assets.educationalGoalImageGreece,
      Assets.explorationGoalImageGreece,
      Assets.culturalGoalImageGreece,
    ],
  ),
];