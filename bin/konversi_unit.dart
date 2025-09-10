import 'dart:io';

void main() {
  // Judul aplikasi
  print("============================================");
  print("         APLIKASI KONVERSI UNIT DART        ");
  print("============================================");

  while (true) {
    print("\nPilih kategori konversi:");
    print("1. Panjang");
    print("2. Massa");
    print("3. Volume");
    print("4. Suhu");
    print("5. Keluar");
    stdout.write("Pilihan Anda: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case "1":
        konversiPanjang();
        break;
      case "2":
        konversiMassa();
        break;
      case "3":
        konversiVolume();
        break;
      case "4":
        konversiSuhu();
        break;
      case "5":
        print("\nTerima kasih telah menggunakan aplikasi ini!");
        print("============================================");
        return;
      default:
        print("Pilihan tidak valid, coba lagi.");
    }
  }
}

// ======================== KONVERSI PANJANG ========================
void konversiPanjang() {
  Map<String, double> panjang = {
    "m": 1.0,
    "cm": 0.01,
    "mm": 0.001,
    "km": 1000.0,
    "inch": 0.0254,
    "ft": 0.3048
  };

  print("\n--- Konversi Panjang ---");
  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync()!);

  if (nilai == null || nilai < 0) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan asal (m, cm, mm, km, inch, ft): ");
  String? asal = stdin.readLineSync();

  if (!panjang.containsKey(asal)) {
    print("Satuan asal tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan tujuan (m, cm, mm, km, inch, ft): ");
  String? tujuan = stdin.readLineSync();

  if (!panjang.containsKey(tujuan)) {
    print("Satuan tujuan tidak valid!");
    return;
  }

  double meter = nilai * panjang[asal]!;
  double hasil = meter / panjang[tujuan]!;

  print("\n$nilai $asal = ${hasil.toStringAsFixed(4)} $tujuan");
}

// ======================== KONVERSI MASSA ========================
void konversiMassa() {
  Map<String, double> massa = {
    "kg": 1.0,
    "g": 0.001,
    "mg": 0.000001,
    "ton": 1000.0,
    "lb": 0.453592,
    "oz": 0.0283495
  };

  print("\n--- Konversi Massa ---");
  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync()!);

  if (nilai == null || nilai < 0) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan asal (kg, g, mg, ton, lb, oz): ");
  String? asal = stdin.readLineSync();

  if (!massa.containsKey(asal)) {
    print("Satuan asal tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan tujuan (kg, g, mg, ton, lb, oz): ");
  String? tujuan = stdin.readLineSync();

  if (!massa.containsKey(tujuan)) {
    print("Satuan tujuan tidak valid!");
    return;
  }

  double kilogram = nilai * massa[asal]!;
  double hasil = kilogram / massa[tujuan]!;

  print("\n$nilai $asal = ${hasil.toStringAsFixed(4)} $tujuan");
}

// ======================== KONVERSI VOLUME ========================
void konversiVolume() {
  Map<String, double> volume = {
    "L": 1.0,
    "mL": 0.001,
    "m3": 1000.0,
    "gal": 3.78541,
    "pt": 0.473176,
    "cup": 0.24
  };

  print("\n--- Konversi Volume ---");
  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync()!);

  if (nilai == null || nilai < 0) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan asal (L, mL, m3, gal, pt, cup): ");
  String? asal = stdin.readLineSync();

  if (!volume.containsKey(asal)) {
    print("Satuan asal tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan tujuan (L, mL, m3, gal, pt, cup): ");
  String? tujuan = stdin.readLineSync();

  if (!volume.containsKey(tujuan)) {
    print("Satuan tujuan tidak valid!");
    return;
  }

  double liter = nilai * volume[asal]!;
  double hasil = liter / volume[tujuan]!;

  print("\n$nilai $asal = ${hasil.toStringAsFixed(4)} $tujuan");
}

// ======================== KONVERSI SUHU ========================
void konversiSuhu() {
  print("\n--- Konversi Suhu ---");
  stdout.write("Masukkan nilai suhu: ");
  double? nilai = double.tryParse(stdin.readLineSync()!);

  if (nilai == null) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Masukkan satuan asal (C, F, K, R): ");
  String? asal = stdin.readLineSync();

  stdout.write("Masukkan satuan tujuan (C, F, K, R): ");
  String? tujuan = stdin.readLineSync();

  double celsius;

  // Konversi ke Celsius dulu
  switch (asal) {
    case "C":
      celsius = nilai;
      break;
    case "F":
      celsius = (nilai - 32) * 5 / 9;
      break;
    case "K":
      celsius = nilai - 273.15;
      break;
    case "R":
      celsius = nilai * 5 / 4;
      break;
    default:
      print("Satuan asal tidak valid!");
      return;
  }

  double hasil;

  // Konversi dari Celsius ke tujuan
  switch (tujuan) {
    case "C":
      hasil = celsius;
      break;
    case "F":
      hasil = celsius * 9 / 5 + 32;
      break;
    case "K":
      hasil = celsius + 273.15;
      break;
    case "R":
      hasil = celsius * 4 / 5;
      break;
    default:
      print("Satuan tujuan tidak valid!");
      return;
  }

  print("\n$nilai $asal = ${hasil.toStringAsFixed(2)} $tujuan");
}
