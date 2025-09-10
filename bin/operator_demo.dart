import 'dart:io';

void main() {
  int? pilihan;
  do {
    // Menu utama untuk memilih jenis operator
    print("\n=====================================");
    print("   DEMO OPERATOR DALAM BAHASA DART   ");
    print("=====================================");
    print("1. Unary Operators");
    print("2. Multiplicative Operators (*, /, %)");
    print("3. Additive Operators (+, -)");
    print("4. Shift Operators (<<, >>)");
    print("5. Relational Operators");
    print("6. Equality Operators");
    print("7. Logical Operators");
    print("8. Conditional Operator (?:)");
    print("9. Assignment Operators");
    print("10. Bitwise Operators");
    print("11. Type Test Operators");
    print("12. Null-aware Operators");
    print("0. Keluar");
    print("=====================================");
    stdout.write("Pilih menu: ");
    pilihan = int.parse(stdin.readLineSync()!); // input pilihan user

    switch (pilihan) {
      case 1:
        // Unary Operators
        stdout.write("Masukkan nilai e: ");
        int e = int.parse(stdin.readLineSync()!);
        bool kondisi = true;
        print("\n=== Unary Operators ===");
        print("++e = ${++e}"); // pre-increment
        print("--e = ${--e}"); // pre-decrement
        print("!kondisi = ${!kondisi}"); // negasi logika
        break;

      case 2:
        // Multiplicative Operators
        stdout.write("Masukkan nilai a: ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan nilai b: ");
        int b = int.parse(stdin.readLineSync()!);
        print("\n=== Multiplicative Operators ===");
        print("$a * $b = ${a * b}");
        print("$a / $b = ${a / b}"); // pembagian menghasilkan double
        print("$a % $b = ${a % b}"); // sisa hasil bagi (modulus)
        break;

      case 3:
        // Additive Operators
        stdout.write("Masukkan nilai a: ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan nilai b: ");
        int b = int.parse(stdin.readLineSync()!);
        print("\n=== Additive Operators ===");
        print("$a + $b = ${a + b}");
        print("$a - $b = ${a - b}");
        break;

      case 4:
        // Shift Operators
        stdout.write("Masukkan nilai x: ");
        int x = int.parse(stdin.readLineSync()!);
        print("\n=== Shift Operators ===");
        print("$x << 1 = ${x << 1}"); // geser bit ke kiri
        print("$x >> 1 = ${x >> 1}"); // geser bit ke kanan
        break;

      case 5:
        // Relational Operators
        stdout.write("Masukkan nilai a: ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan nilai b: ");
        int b = int.parse(stdin.readLineSync()!);
        print("\n=== Relational Operators ===");
        print("$a > $b: ${a > b}");
        print("$a < $b: ${a < b}");
        print("$a >= $b: ${a >= b}");
        print("$a <= $b: ${a <= b}");
        break;

      case 6:
        // Equality Operators
        stdout.write("Masukkan nilai a: ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan nilai b: ");
        int b = int.parse(stdin.readLineSync()!);
        print("\n=== Equality Operators ===");
        print("$a == $b: ${a == b}");
        print("$a != $b: ${a != b}");
        break;

      case 7:
        // Logical Operators
        stdout.write("Masukkan nilai x (true/false): ");
        bool x = stdin.readLineSync()! == "true"; // konversi input ke boolean
        stdout.write("Masukkan nilai y (true/false): ");
        bool y = stdin.readLineSync()! == "true";

        print("\n=== Logical Operators ===");
        print("x && y = ${x && y}"); // AND
        print("x || y = ${x || y}"); // OR
        print("!x = ${!x}");         // NOT
        print("!y = ${!y}");
        break;

      case 8:
        // Conditional Operator (ternary)
        stdout.write("Masukkan umur: ");
        int umur = int.parse(stdin.readLineSync()!);
        String status = (umur >= 18) ? "Dewasa" : "Anak-anak"; // ternary operator
        print("\n=== Conditional Operator ===");
        print("Umur: $umur -> Status: $status");
        break;

      case 9:
        // Assignment Operators
        stdout.write("Masukkan nilai c: ");
        int c = int.parse(stdin.readLineSync()!);
        print("\n=== Assignment Operators ===");
        print("c = $c");
        c += 2; // tambah dan simpan
        print("c += 2 -> $c");
        c -= 1; // kurang dan simpan
        print("c -= 1 -> $c");
        c *= 3; // kali dan simpan
        print("c *= 3 -> $c");
        c ~/= 2; // bagi integer dan simpan
        print("c ~/= 2 -> $c");
        c %= 4; // modulus dan simpan
        print("c %= 4 -> $c");
        break;

      case 10:
        // Bitwise Operators
        stdout.write("Masukkan nilai a: ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Masukkan nilai b: ");
        int b = int.parse(stdin.readLineSync()!);
        print("\n=== Bitwise Operators ===");
        print("$a & $b = ${a & b}"); // AND bitwise
        print("$a | $b = ${a | b}"); // OR bitwise
        print("$a ^ $b = ${a ^ b}"); // XOR bitwise
        print("~a = ${~a}");         // NOT bitwise (komplemen)
        print("$a << 1 = ${a << 1}"); // shift kiri
        print("$a >> 1 = ${a >> 1}"); // shift kanan
        break;

      case 11:
        // Type Test Operators
        stdout.write("Masukkan sebuah teks: ");
        var teks = stdin.readLineSync()!;

        stdout.write("Masukkan sebuah angka: ");
        dynamic angka = int.parse(stdin.readLineSync()!);

        print("\n=== Type Test Operators ===");
        print("teks is String: ${teks is String}"); // cek apakah tipe String
        print("teks is! int: ${teks is! int}");     // cek apakah bukan int
        print("angka as int + 10 = ${(angka as int) + 10}"); // cast ke int
        break;

      case 12:
        // Null-aware Operators
        stdout.write("Masukkan nama (kosongkan jika ingin null): ");
        String? nama = stdin.readLineSync();
        if (nama == "") nama = null; // jika input kosong, set jadi null

        stdout.write("Masukkan nama default (untuk ??=): ");
        String defaultNama = stdin.readLineSync()!;

        print("\n=== Null-aware Operators ===");
        print("nama ?? 'Guest' = ${nama ?? 'Guest'}"); // jika null tampilkan Guest
        print("nama?.length = ${nama?.length}");       // safe access
        nama ??= defaultNama; // isi dengan defaultNama jika masih null
        print("Dnama setelah ??= '$defaultNama' -> $nama");
        break;

      case 0:
        print("\nTerima kasih! Program selesai.");
        break;

      default:
        print("Pilihan tidak valid!");
    }
  } while (pilihan != 0);

  print("\n=====================================");
  print("     SELESAI DEMO OPERATOR DART      ");
  print("=====================================");
}
