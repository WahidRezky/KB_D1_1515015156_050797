DOMAINS
nama = orang(symbol,symbol) /* (Pertama , Kedua) */
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */
telepon = symbol /* Nomor telepon */

PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir)
yang_ulang_tahun_bulan_ini
konversi_bulan(symbol,integer) %konversi_bulan menggunakan type data integer
cek_bulan_ulang_tahun(integer,hari_lahir)%konversi_bulan menggunakan type data integer
cetak_orang(nama)

CLAUSES
yang_ulang_tahun_bulan_ini:-
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
write(" Nama Pertama\t\t Nama Kedua\n"),
write("******************************************************"),nl,
date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */
daftar_telepon(Orang, _, Tanggal), %daftar_telepon mengamibl data dari data orang dan data tanggal
cek_bulan_ulang_tahun(Bulan_ini, Tanggal), %definisi untuk mengecek ulang cek_bulan_ulang_tahun apakah bulan_ini dan tanggal sesuai yg di inginkan
cetak_orang(Orang), %untuk mencetak ulang orang
fail. %melacak balik sebuah program
yang_ulang_tahun_bulan_ini:-
write("\n\n Tekan sembarang tombol..."),nl,
readchar(_). %membaca karakter
cetak_orang(orang(Pertama,Kedua)):- %disini nnti orang yg berulang tahun akan dimasukkan sesuai golnya
write(" ",Pertama,"\t\t\t ",Kedua),nl. %menampilkan data yg ada di dalam kurung
cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):- %definisi untuk mengecek ulang Bul,tanggal_lahir(_,Bulan,_) dan tanggal sesuai yg di inginkan
konversi_bulan(Bulan,Bulan1), %untuk menentukan konversi bulan
Bul = Bulan1.
daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)). %data yg ingin di tampilkan nnti nya di goal
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)). %data yg ingin di tampilkan nnti nya di goal
konversi_bulan(jan, 1). %untuk menampilkan konversi bulan
konversi_bulan(feb, 2). %untuk menampilkan konversi bulan
konversi_bulan(mar, 3). %untuk menampilkan konversi bulan
konversi_bulan(apr, 4). %untuk menampilkan konversi bulan
konversi_bulan(may, 5). %untuk menampilkan konversi bulan
konversi_bulan(jun, 6). %untuk menampilkan konversi bulan
konversi_bulan(jul, 7). %untuk menampilkan konversi bulan
konversi_bulan(aug, 8). %untuk menampilkan konversi bulan
konversi_bulan(sep, 9). %untuk menampilkan konversi bulan
konversi_bulan(oct, 10). %untuk menampilkan konversi bulan
konversi_bulan(nov, 11). %untuk menampilkan konversi bulan
konversi_bulan(dec, 12). %untuk menampilkan konversi bulan

GOAL
yang_ulang_tahun_bulan_ini. %memanggil siapa yg ulang tahun di bulan ini