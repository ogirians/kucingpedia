class Kucings {
  String nama;
  String jenis;
  String asal;
  String ciri;
  String deskripsi;
  String imageAsset;
  List<String> imageUrls;

  Kucings({
    required this.nama,
    required this.jenis,
    required this.asal,
    required this.ciri,
    required this.deskripsi,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var kucingList = [
  Kucings(
    nama: 'Leo',
    jenis: 'kampunng',
    asal: 'rumah terdekat.',
    ciri: 'oren, hitam, putih dll.',
    deskripsi: 'suka mencuri ikan tetangga',
    imageAsset: 'assets/images/KucingFront.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),

  Kucings(
    nama: 'danang',
    jenis: 'bule',
    asal: 'rumah holang kayah.',
    ciri: 'oren, hitam, putih dll.',
    deskripsi: 'suka ngerepotin babu',
    imageAsset: 'assets/images/cat04.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),

  Kucings(
    nama: 'jeksen',
    jenis: 'blaster',
    asal: 'biasanya di rumah saudara ada minim satu',
    ciri: 'oren, hitam, putih dll.',
    deskripsi: 'labil, kadang lucu.. kadang amit2',
    imageAsset: 'assets/images/cat05.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
];
