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