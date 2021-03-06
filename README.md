## Instruksi instalasi dan menjalankan aplikasi

Dalam projek ini terdapat 2 aplikasi dengan nama folder :

 - **apifacebook**
 - **appinventory**
	 - dengan file **.sql**

Spesifikasi program pendukung untuk aplikasi ini :
-   NodeJS v10.13.0 atau terbaru    
-   Npm 6.7.0 atau terbaru
-  PostgreSql v11

untuk memulai menjalankan salah satu aplikasi pastikan npm, node js, dan database postgresql sudah terinstall dengan spesifikasi diatas ,jika sudah kemudian mulai dengan meng copy projek atau clone projek ini dengan cara :
```
git clone https://github.com/eqqi33/expressjs-apifacebook-simpleapp.git
```
lalu masuk kedalam folder expressjs-apifacebook-simpleapp

    cd expressjs-apifacebook-simpleapp

kemudian pilih salah satu projek yang akan dijalankan, contoh:
	

    cd apifacebook
 
setelah masuk ke dalam folder aplikasi, jalankan perintah

    npm install

setelah itu jalan kan perintah "DEBUG=[**folder projek**]:* npm run" **start** untuk macOS dan Linux, dan "set DEBUG=[**folder projek**]:* & npm start" untuk pengguna windows, contoh:
	
	On Mac & Linux
    DEBUG=apifacebook:* npm run start

	On Windows
    set DEBUG=apifacebook:* & npm run star

maka program akan berjalan sesuai dengan portnya dan coba akses url "http://localhost:[**port**]" dibrowser, contoh:

    http://localhost:3000
 
 **Note :**
	 

 - untuk setiap folder aplikasi, wajib menjalankan **npm install**, karena setiap project memiliki kebutuhan depedency yang berbeda
 - untuk aplikasi **apifacebook** menggunakan port **3000** saat akses pada browser
 - untuk aplikasi **apifacebook** user harus login facebook dengan akun yang tercantum pada tes soal karena aplikasi memakai developer facebook versi development
 - untuk aplikasi **appinventory** menggunakan port **4000** saat akses browser
 - untuk aplikasi **appinventory** silahkan import file sql nya terlebih dahulu
 - untuk konfigurasi database aplikasi **appinventory**, bisa di ubah di file routes/index.js pada variabel cn, contoh:

> const  cn  =  'postgres://postgres:admin123@127.0.0.1:5432/expressjs_testing';

 

## Testing Aplikasi

Untuk menjalankan testing pada aplikasi, jalankan pada root folder aplikasi, lalu jalankan perintah "DEBUG=[**folder projek**]:* npm run **test**", contoh:

    DEBUG=apifacebook:* npm run test

untuk melihat test coverage aplikasi, jalan kan perintah "DEBUG=[**folder projek**]:* npm run **coverage**", contoh:

    DEBUG=apifacebook:* npm run coverage

maka hasil dari coverage bisa dilihat dalam bentuk file html yang tergenerate didalam folder coverage/ dan file yang diakses berada di Icov-report/index.html

## Routing Aplikasi
 -	apifacebook
	 -	/ => root aplikasi
	 -	/login => masuk halaman login
 -	appinventory
	 -	/ => root aplikasi