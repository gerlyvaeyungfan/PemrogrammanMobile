import 'dart:io';

void main() {
  // Judul aplikasi
  print("===========================================");
  print("        APLIKASI KONVERSI MATA UANG        ");
  print("===========================================");

  // Kurs mata uang (contoh: nilai terhadap 1 USD)
  Map<String, double> kurs = {
    "USD": 1.0,
    "IDR": 15500.0,  // Rupiah
    "EUR": 0.92,     // Euro
    "JPY": 147.0     // Yen Jepang
  };

  while (true) {
    print("\nPilih menu:");
    print("1. Konversi Mata Uang");
    print("2. Daftar Kurs");
    print("3. Keluar");
    stdout.write("Pilihan Anda: ");
    String? menu = stdin.readLineSync();

    switch (menu) {
      case "1":
        konversiMataUang(kurs);
        break;
      case "2":
        tampilkanKurs(kurs);
        break;
      case "3":
        print("\nTerima kasih telah menggunakan aplikasi ini!");
        print("===========================================");
        return;
      default:
        print("Pilihan tidak valid, coba lagi.");
    }
  }
}

// Fungsi konversi mata uang
void konversiMataUang(Map<String, double> kurs) {
  print("\n--- Konversi Mata Uang ---");
  stdout.write("Masukkan jumlah uang: ");
  double? jumlah = double.tryParse(stdin.readLineSync()!);

  if (jumlah == null || jumlah < 0) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Masukkan mata uang asal (USD, IDR, EUR, JPY): ");
  String? asal = stdin.readLineSync()?.toUpperCase();

  stdout.write("Masukkan mata uang tujuan (USD, IDR, EUR, JPY): ");
  String? tujuan = stdin.readLineSync()?.toUpperCase();

  if (!kurs.containsKey(asal) || !kurs.containsKey(tujuan)) {
    print("Satuan mata uang tidak valid!");
    return;
  }

  // Konversi ke USD dulu sebagai acuan
  double dalamUSD = jumlah / kurs[asal]!;
  double hasil = dalamUSD * kurs[tujuan]!;

  print("\nHasil Konversi:");
  print("$jumlah $asal = ${hasil.toStringAsFixed(2)} $tujuan");
}

// Fungsi menampilkan daftar kurs
void tampilkanKurs(Map<String, double> kurs) {
  print("\n--- Daftar Kurs (berdasarkan USD) ---");
  kurs.forEach((mataUang, nilai) {
    print("1 USD = ${nilai.toStringAsFixed(2)} $mataUang");
  });
}
