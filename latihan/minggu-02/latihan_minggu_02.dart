// ============================================
// TUGAS 1: Konversi Suhu
// ============================================
double celsiusKeFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusKeKelvin(double celsius) {
  return celsius + 273.15;
}

// ============================================
// TUGAS 2: Class Produk
// ============================================
class Produk {
  final String nama;
  final double harga;
  final double? diskon;

  Produk({required this.nama, required this.harga, this.diskon});

  double get hargaAkhir {
    if (diskon == null || diskon == 0) {
      return harga;
    }
    return harga - (harga * diskon! / 100);
  }

  String get info {
    if (diskon == null) {
      return '$nama - Rp${harga.toStringAsFixed(0)} (tanpa diskon)';
    }
    return '$nama - Rp${harga.toStringAsFixed(0)} (diskon ${diskon}%) -> Rp${hargaAkhir.toStringAsFixed(0)}';
  }
}

// ============================================
// TUGAS 3: Demonstrasi var, final, const, late
// ============================================
void demonstrasiKeyword() {
  // var: nilai akan berubah
  var jumlahMahasiswa = 30;
  jumlahMahasiswa = 35;
  print('Jumlah mahasiswa: $jumlahMahasiswa');

  // final: ditentukan saat runtime, tidak berubah
  final waktuSekarang = DateTime.now();
  print('Waktu sekarang: $waktuSekarang');

  // const: sudah diketahui saat kompilasi
  const phi = 3.14159;
  const namaKampus = 'Universitas Warmadewa';
  print('Phi: $phi');
  print('Kampus: $namaKampus');

  // late: nilai baru tersedia setelah deklarasi
  late String statusKelulusan;
  int nilaiAkhir = 85;
  if (nilaiAkhir >= 75) {
    statusKelulusan = 'Lulus';
  } else {
    statusKelulusan = 'Tidak Lulus';
  }
  print('Status: $statusKelulusan');
}

// ============================================
// MAIN
// ============================================
void main() {
  print('=== TUGAS 1: Konversi Suhu ===');
  double suhu = 25.0;
  print('Suhu: $suhu°C');
  print('Fahrenheit: ${celsiusKeFahrenheit(suhu).toStringAsFixed(2)}°F');
  print('Kelvin: ${celsiusKeKelvin(suhu).toStringAsFixed(2)}K');

  print('');
  print('=== TUGAS 2: Class Produk ===');
  final produk1 = Produk(nama: 'Buku Tulis', harga: 15000);
  print(produk1.info);
  final produk2 = Produk(nama: 'Pulpen', harga: 20000, diskon: 10);
  print(produk2.info);
  final produk3 = Produk(nama: 'Tas', harga: 150000, diskon: 25);
  print(produk3.info);

  print('');
  print('=== TUGAS 3: Keyword ===');
  demonstrasiKeyword();
}