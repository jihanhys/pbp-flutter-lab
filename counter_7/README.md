# Pertanyaan Tugas 9

Nama    : Jihan Hanifah Yasmin
NPM     : 2106701955

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, yaitu dengan code generation yang biasa digunakan untuk proyek skala menengah sampai besar. JSON serialization dengan code generation berarti mempunyai external library yang membuatkan boilerplate untuk kode-kode kita. Pengambilan data JSON dengan metode ini lebih baik untuk proyek berskala besar karena typo saat mengakses fields JSON sudah ditangkap saat waktu compile. Contoh library yang dapat digunakan yaitu `json_serializable` dan `built_value`.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang digunakan untuk tugas kali ini kurang lebih ada beberapa yang sama seperti tugas minggu lalu, seperti widget drawer untuk side bar. Perbedaannya adalah untuk tugas 9 saya menggunakan baru bernama `FutureBuilder`. Widget `FutureBuilder` berfungsi untuk mengeksekusi fungsi asinkronus, dan dari fungsi tersebut, dengan bantuan widget `FutureBuilder` UI dari page yang dilihat user akan ter-update. Pada tugas kali ini fungsi asinkronus terdapat di file watchlist_data.dart untuk fetch data json. Fungsi tersebut akan dijelaskan lebih lanjut pada jawaban dari pertanyaan berikutnya.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Fetch data JSON dari internet dapat dilakukan dengan method get dari package http. Untuk melakukan request HTTP GET dari suatu website, kita harus menyediakan URI untuk source data JSON-nya, yang kemudian di-parse menjadi url. Url tersebut menspesifikasikan protokol HTTP. Ketika kita memasukkan address dari HTTP ke web browser, browser tersebut akan mengirim request HTTP GET ke web server. Kemudian, web server mengirimkan response HTTP yang mengandung konten dari page tersebut, atau bisa juga pesan error.Response tersebut kemudian di-decode, dan untuk tugas ini dimasukkan ke dalam list untuk nantinya ditampilkan di aplikasi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Cara saya mengimplementasikan checklist tersebut yaitu pertama saya refactor file-file ke dalam folder terpisah. Kemudian saya membuat tiga file baru yaitu mywatchlist.dart, watchlist_data.dart, dan detail.dart.
Pada file mywatchlist.dart, ditambahkan drawer agar user bisa berpindah-pindah ke page lain melalui side bar. Lalu, file watchlist_data.dart berisi boilerplate untuk memproses data JSON yang diambil. Data JSON diambil dari link aplikasi heroku untuk tugas 3. Kemudian ditampilkan dalam sebuah card untuk masing-masing data (judulnya saja).
File detail.dart mengandung informasi lengkap mengenai datanya, yang dapat diakses jika click card pada halaman My Watch List (menggunakan fungsi push). Setiap atribut dari data saya tempatkan dalam sebuah padding agar lebih rapih. Terakhir ditambahkan tombol back dengan memanfaatkan fungsi pop.

# Pertanyaan Tugas 8

Nama    : Jihan Hanifah Yasmin
NPM     : 2106701955

### Jelaskan perbedaan  `Navigator.push`  dan  `Navigator.pushReplacement`.

Perbedaan dari push dan pushReplacement yaitu pada pushReplacement, yang dilakukan tidak hanya mengarahkan user pada screen yang diinginkan, tetapi juga menghilangkan/menghapus route sebelumnya ketika route yang baru sudah selesai di-load. Sementara, pada push, route sebelumnya tetap ada pada ‘stack’ navigasi.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Pada tugas kali ini, saya menggunakan widget Drawer, Column, ListTile, Form, Container, Padding, TextFormField, DropdownButton, TextButton, ListView, Text, Align, Card, SizedBox.

- Drawer digunakan untuk navigasi di aplikasi, widget ini juga berisi children widget ListTile
- ListTile berfungsi agar tulisan screen yang ada di navigasi dapat di-click sehingga bisa mengarah ke screen yang diinginkan user.
- Column digunakan untuk meletakkan elemen-elemen di aplikasi secara vertikal.
- Form digunakan untuk screen yang melayani pengisian form untuk user.
- Padding untuk mengatur posisi elemen-elemen yang ada di aplikasi.
- TextFormField berisi perintah/kode untuk mengambil input dari user yang berbentuk text. Dalam tugas ini yaitu judul dan nominal.
- DropdownButton untuk mengambil input yang dari elemen yang berbentuk dropdown. Dalam tugas ini untuk jenis budget.
- TextButton berisi kode untuk submit isi form dan menyimpan isi formnya ke suatu list.
- Card untuk menampilkan data-data dari form budget. Di mana satu budget diletakkan pada satu card.
- SizedBox untuk mengatur ukuran card
- Align untuk setiap data pada masing-masing card. Dalam hal ini, Align mengatur posisi data judul, nominal, dan jenis budget.

### Sebutkan jenis-jenis *event* yang ada pada Flutter (contoh: `onPressed`).

- onPressed
- onTap
- onLongPress
- onHover
- onFocusChange

### Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Widget navigator merupakan manager yang mengatur perpindahan screen. Navigasi di Flutter menggunakan struktur Stack karena konsepnya mirip dengan behavior screen. Widget navigator mempunyai method push dan pop. Method push menambahkan sebuah screen baru ke bagian paling atas stack, sedangkah pop akan menghilangkan screen dari stack navigasi.

Jadi, cara kerjanya yaitu misal untuk tugas ini ada halaman Tambah Budget dan Data Budget. Jika kita sedang berada di screen Tambah Budget dan ingin melihat data di Data Budget, ketika kita klik Data Budget di navigasi, maka screen Data Budget akan di-push ke dalam stack, jika kita ingin kembali ke screen Tambah Budget, maka screen Data Budget akan di-pop dari stack.

### Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.

Pertama, saya menambahkan drawer yang berisi navigator agar user bisa berpindah-pindah screen melalui navigator tersebut. Kemudian, saya membuat dua file baru, yaitu form.dart dan show.dart. 

Pada form.dart, saya menambahkan widget Form yang berisi key untuk identifikasi form, serta memungkinkan validasi untuk form. Form berisi input untuk judul, nominal, dan jenis budget. Untuk setiap input, diatur padding-nya. Saya juga menambahkan behavior untuk saat ketika nama diketik dan saat data disimpan, serta validator.

Pada show.dart, saya mengimport list dari form.dart untuk ditampilkan pada screen Data Budget. Lalu, saya melakukan looping pada children dari Column untuk menampilkan setiap datanya. Setiap looping, data-data akan ditaruh pada sebuah Card. Lebih spesifiknya, pada widget Text yang sebelumnya telah diatur pada widget Align.

# Pertanyaan Tugas 7

Nama    : Jihan Hanifah Yasmin
NPM     : 2106701955

###  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

1. Stateless widget tidak mempunyai state. Maksud dari tidak punya state yaitu properti dari wiget yang stateless ini ditentukan oleh parent-nya. Saat di-instansiasi untuk pertama kalinya, properti akan tetap, tidak berubah kecuali parent-nya mengalami perubahan. Perubahan mengacu pada parent, serta properti bersifat final. Contohnya adalah root aplikasi.
2. Stateful widget Mempunyai child (widget state) yang menyimpan status. Jika ada perubahan state, maka stateful widget akan re-build. Contohnya adalah jika root stateless, home-nya stateful. 
Penanda state yaitu dengan extends.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang saya gunakan pada tugas kali ini yaitu AppBar, Center, Column, Text, Padding, Row, Icon, FloatingActionButton. AppBar digunakan untuk membuat bar di bagian paling atas mobile app. Center berfungsi sebagai widget layout. Column juga merupakan widget layout yang mengatur children secara vertikal. Text untuk menampilkan text pada mobile app. Padding untuk menampung button-button agar posisinya bisa diatur. Icon untuk button + dan -. FloatingActionButton untuk event handler saat button di-klik. Row mengatur children secara horizontal.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState() yaitu untuk handle perubahan yang dilakukan, perubahan di-pass ke setState. Saat setState() dipanggil, framework akan diberitahu bahwa internal state dari suatu object telah diubah, yang bisa saja mengubah tampilan pada interface user. Variabel yang terdampak pada fungsi setState() app Counter_7 adalah _counter dan status.

### Jelaskan perbedaan antara const dengan final.
Perbedaan antara final dan const yaitu keyword const membuat variabel konstan dari waktu compile. Jadi nilai dari variabelnya harus sudah ada dari saat compile. Variabel dengan keyword const dan final bersifat immutable. Namun, untuk final, variabelnya bisa dideklarasikan pada sebelum dan sesudah compile.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Pertama, saya membuat app baru dengan menjalankan perintah "flutter create counter_7". Kemudian saya membuat fungsi bernama _decrementCounter untuk memproses pengurangan angka. Pada _incrementCounter dan _decrementCounter, saya membuat conditional statement untuk mengatur text pada saat angka bernilai ganjil atau genap.
Lalu, saya membuat widget untuk mengimplementasikan button agar user bisa melakukan increment dan decrement. Untuk menyembunyikan button - pada saat angka bernilai 0, saya menggunakan conditional statement.