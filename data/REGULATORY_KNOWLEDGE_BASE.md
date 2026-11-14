# Register Regulasi Indonesia — AutoCoding.id

**Pemeriksaan status terakhir: 14 November 2026**

## Kebijakan wajib

AutoCoding.id hanya boleh memakai regulasi yang statusnya telah diverifikasi **berlaku** pada JDIH Kementerian Kesehatan atau JDIH BPK. Regulasi yang dicabut/diganti hanya disimpan sebagai metadata pengecualian agar tidak digunakan lagi sebagai dasar aktif.

Regulasi harus diterapkan sesuai ruang lingkupnya. Regulasi rekam medis, rumah sakit, penanggulangan penyakit, dan metode pembayaran tidak otomatis menjadi aturan pemilihan kode ICD-10 atau penentuan DU/DS.

## Daftar regulasi aktif yang sudah diverifikasi

| Regulasi | Status | Ruang lingkup penggunaan di aplikasi |
|---|---|---|
| UU 17 Tahun 2023 tentang Kesehatan | Berlaku | Kerangka hukum umum kesehatan; bukan aturan kode ICD. |
| PP 28 Tahun 2024 | Berlaku | Pelaksanaan UU Kesehatan; gunakan sesuai materi pasal yang relevan. |
| Permenkes 24 Tahun 2022 tentang Rekam Medis | Berlaku | Dokumentasi dan penyelenggaraan rekam medis. |
| Permenkes 26 Tahun 2021 tentang Pedoman INA-CBG | Berlaku | Konteks klaim INA-CBG; jangan dilabeli sebagai pedoman iDRG. |
| Permenkes 3 Tahun 2026 tentang Penanggulangan Penyakit | Berlaku | Konteks penanggulangan dan pencatatan/pelaporan penyakit. |
| Permenkes 6 Tahun 2026 tentang Rumah Sakit | Berlaku | Konteks penyelenggaraan, tata kelola, pencatatan dan pelaporan rumah sakit. |

Sumber status resmi:
- [UU 17/2023 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/undang-undang-nomor-17-tahun-2023)
- [PP 28/2024 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/peraturan-pemerintah-nomor-28-tahun-2024)
- [Permenkes 24/2022 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/peraturan-menteri-kesehatan-nomor-24-tahun-2022)
- [Permenkes 26/2021 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/peraturan-menteri-kesehatan-nomor-26-tahun-2021)
- [Permenkes 3/2026 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/peraturan-menteri-kesehatan-nomor-3-tahun-2026)
- [Permenkes 6/2026 — JDIH Kemenkes](https://jdih.kemkes.go.id/documents/peraturan-menteri-kesehatan-nomor-6-tahun-2026)

## Regulasi yang wajib dikecualikan dari rujukan aktif

| Regulasi lama | Status | Pengganti |
|---|---|---|
| Permenkes 269/Menkes/Per/III/2008 tentang Rekam Medis | Dicabut | Permenkes 24 Tahun 2022 |
| Permenkes 27 Tahun 2014 tentang Petunjuk Teknis INA-CBG | Tidak berlaku | Permenkes 76 Tahun 2016, kemudian diganti Permenkes 26 Tahun 2021 |
| Permenkes 76 Tahun 2016 tentang Pedoman INA-CBG | Tidak berlaku | Permenkes 26 Tahun 2021 |
| Permenkes 3 Tahun 2020 tentang Klasifikasi dan Perizinan Rumah Sakit | Dicabut | Permenkes 6 Tahun 2026 |

**Catatan penting:** contoh atau ketentuan dari regulasi lama tidak boleh dipromosikan sebagai ketentuan aktif. Bila dipertahankan untuk keperluan sejarah/audit, labelnya harus jelas sebagai referensi historis dan tidak boleh memengaruhi keputusan otomatis.

## Aturan implementasi untuk AI dan aplikasi

1. WHO ICD-10 tetap menjadi sumber struktur kode dan judul resmi WHO.
2. Regulasi Indonesia dipakai untuk konteks dokumentasi, penyelenggaraan layanan, pelaporan, dan pembayaran sesuai ruang lingkup masing-masing.
3. Jangan membuat aturan DU/DS hanya dari judul atau ringkasan regulasi. Telusuri pasal/lampiran spesifik dan pastikan ketentuan tersebut memang mengatur kodifikasi.
4. Jangan menyamakan INA-CBG dengan iDRG.
5. Jika status regulasi belum terverifikasi, tandai `status_unverified` dan jangan gunakan untuk keputusan otomatis.
6. Setiap pembaruan harus mencatat tanggal pemeriksaan status, URL sumber resmi, status, relasi pencabutan/penggantian, dan ruang lingkup.
7. Lakukan pemeriksaan ulang JDIH sebelum setiap rilis produksi. Pemeriksaan berkala tidak boleh mengubah status secara otomatis tanpa validasi sumber resmi.

## Berkas mesin

Daftar terstruktur tersedia pada [regulatory-register.json](./regulatory-register.json). Field `excluded_superseded` hanya untuk mencegah penggunaan regulasi yang sudah dicabut/diganti.
