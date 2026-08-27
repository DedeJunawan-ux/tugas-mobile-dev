*class UserModel {
  final String id;
  final String name;
  final String? email;
  final int age;
  final bool isActive; 

  UserModel({
    required this.id,
    required this.name,
    this.email,
    required this.age,
    required this.isActive,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? 'Unknown User',
      email: json['email'] as String?,
      age: json['age'] as int? ?? 0,
      isActive: json['isActive'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
      'isActive': isActive,
    };
  }
}

// 5. Eksekusi dan Pengujian
void main() {
  // Simulasi JSON dari API. Ada data yang hilang (id, email, isActive tidak dikirim)
  Map<String, dynamic> jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
  };

  // Konversi JSON ke Objek (Aplikasi tidak akan crash berkat Null Safety)
  UserModel user = UserModel.fromJson(jsonResponse);

  print('Name: ${user.name}'); 
  print('ID: ${user.id}'); // Output: (string kosong)
  print('Status: ${user.isActive}'); // Output: false

  // Konversi kembali Objek ke JSON
  print('To JSON: ${user.toJson()}');
}