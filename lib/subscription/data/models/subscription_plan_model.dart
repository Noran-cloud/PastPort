class SubscriptionPlanModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String currency;
  final int billingCycle;
  final int trialDays;
  final int displayOrder;
  final List<FeatureModel> features;

  SubscriptionPlanModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.billingCycle,
    required this.trialDays,
    required this.displayOrder,
    required this.features,
  });

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlanModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      currency: json['currency'],
      billingCycle: json['billingCycle'],
      trialDays: json['trialDays'],
      displayOrder: json['displayOrder'],

      features: (json['features'] as List)
          .map((e) => FeatureModel.fromJson(e))
          .toList(),
    );
  }
}

class FeatureModel {
  final String id;
  final String name;
  final String slug;
  final String description;
  final dynamic limit;
  final bool isEnabled;

  FeatureModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.limit,
    required this.isEnabled,
  });

  factory FeatureModel.fromJson(Map<String, dynamic> json) {
    return FeatureModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      description: json['description'],
      limit: json['limit'],
      isEnabled: json['isEnabled'],
    );
  }
}