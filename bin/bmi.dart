import 'dart:io';

void main() {
  // Judul aplikasi
  print("=====================================");
  print("      APLIKASI PERHITUNGAN BMI       ");
  print("=====================================");
  print("Body Mass Index adalah pengukuran");
  print("berat badan ideal berdasarkan tinggi.");
  print("-------------------------------------\n");

  // Input berat badan (kg)
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  // Input tinggi badan (cm)
  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Konversi tinggi dari cm ke meter
  double tinggiM = tinggiCm / 100;

  // Rumus BMI = berat / (tinggi^2)
  double bmi = berat / (tinggiM * tinggiM);

  // Menentukan kategori BMI
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi >= 18.5 && bmi < 25) {
    kategori = "Normal";
  } else if (bmi >= 25 && bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  // Output hasil
  print("\n=====================================");
  print("         HASIL PERHITUNGAN BMI       ");
  print("=====================================");
  print("Berat badan : $berat kg");
  print("Tinggi badan: $tinggiCm cm");
  print("BMI         : ${bmi.toStringAsFixed(2)}");
  print("Kategori    : $kategori");
  print("=====================================");
  print("Keterangan:");
  print("- Kurus     : BMI < 18.5");
  print("- Normal    : 18.5 - 24.9");
  print("- Gemuk     : 25 - 29.9");
  print("- Obesitas  : >= 30");
  print("=====================================");
}
