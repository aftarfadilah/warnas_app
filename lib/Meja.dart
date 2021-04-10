class Meja {
  final String nomor;
  final String deskripsi;
  final bool status;

  Meja(this.nomor, this.deskripsi, this.status);
  factory Meja.fromJson(Map<String, dynamic> json) {
    return Meja(
      json['nomor_meja'],
      json['deskripsi'],
      json['status']
    );
  }
}