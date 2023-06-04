class Portfolio {
  final String id;
  final String name;
  final String job;
  final String email;
  final String phoneNumber;
  final String website;
  final String address;
  final String description;

  Portfolio({
    required this.id,
    required this.name,
    required this.job,
    required this.email,
    required this.phoneNumber,
    required this.website,
    required this.address,
    this.description = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'job': job,
      'email': email,
      'phoneNumber': phoneNumber,
      'website': website,
      'address': address,
      'description': description,
    };
  }


  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      website: json['website'],
      address: json['address'],
      description: json['description'] ?? '',
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'job': job,
      'email': email,
      'phoneNumber': phoneNumber,
      'website': website,
      'address': address,
      'description': description,
    };
  }

  factory Portfolio.fromMap(Map<String, dynamic> map) {
    return Portfolio(
      id: map['id'],
      name: map['name'],
      job: map['job'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      website: map['website'],
      address: map['address'],
      description: map['description'],
    );
  }
}
