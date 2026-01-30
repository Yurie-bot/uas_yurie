class hp {
  String id;
  String nama;  
  int harga;
  int stok;
  String foto;

  hp({
    required this.id,
    required this.nama,
    required this.harga,
    required this.stok,
    required this.foto,
  });

  factory hp.fromJson(Map<String, dynamic> json) => hp(
    id: json['kd_hp'] ?? '',
    nama: json['nama'] ?? '',   
    harga: int.tryParse(json['harga'].toString()) ?? 0,
    stok: int.tryParse(json['stok'].toString()) ?? 0,
    foto: json['foto'] ?? '',
  );

  Map<String, String> toForm() => {
    'kd_hp': id,
    'nama': nama,
    'harga': harga.toString(),
    'stok': stok.toString(),
    'foto': foto,
  };
}