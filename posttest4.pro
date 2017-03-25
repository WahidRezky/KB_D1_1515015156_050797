DOMAINS	%berisi deklarasi (pernyataan) tentang jenis data yang akan digunakan dalam fakta dan aturan. didalam program ini memakai jenis data symbol.
nama,jender,pekerjaan,benda,alasan,zat = symbol	%karena symbol sebagai kumpulan karakter atau dengan huruf kecil. dan memakai jenis data integer karena memakai angka.
umur=integer
PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)	%sebagai nama simbolik untuk relasi dan kata nondeterm ini berfungsi untuk memberitahu bahwa pdikat tersebut mempunyai lebih dari kemungkinan jawaban.
nondeterm selingkuh(nama, nama)	%didalam predicate diawali dengan huruf kecil dan dapat diikuti oleh huruf,bilangan, atau garis bawah, dan tidak menggunakan spasi,tanda bintang, tanda minus atau garis miring.
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)

CLAUSES %fakta.
orang(budi,55,m,tukang_kayu).	%disini menjelaskan bahwa budi adalah orang berumur 55 gender laki-laki dan pekerjaan tukang kayu.
orang(aldi,25,m,pemain_sepak_bola). %disini menjelaskan aldi adalah orang berumur 25, gender laki-laki dan pekerjaan pemain sepak bola.
orang(aldi,25,m,tukang_jagal).	  %aldi adalah orang berumur 25, gender laki-laki dan pekerjaannya tukang jagal.
orang(joni,25,m,pencopet).	%joni adalah orang berumur 25, bergender laki-laki dan pekerjaan pencopet.
selingkuh(ina,joni). %disini menjelaskan bahwa ina selingkuh dengan joni.
selingkuh(ina,budi). %ina selingkuh dengan budi.
selingkuh(siti,joni). %siti selingkuh dengan joni.
terbunuh_dengan(siti,pentungan). %siti terbunuh dengan pentungan.
terbunuh(siti).	%siti yang terbunuh.
motif(uang). %motifnya adalah uang.
motif(cemburu). %motifnya adalah cemburu.
motif(dendam). %motifnya adalah dendam.
ternodai(budi, darah). 	%budi ternodai darah.
ternodai(siti, darah).	%siti ternodai darah.
ternodai(aldi, lumpur). %aldi ternodai lumpur.
ternodai(joni, coklat). %joni ternodai coklat.
ternodai(ina, coklat). 	%ina ternodai coklat.
milik(budi,kaki_palsu). %budi memiliki kaki palsu.
milik(joni,pistol).	%joni memiliki pisto.
 
cara_kerja_mirip(kaki_palsu, pentungan). %kaki palsu cara kerja mirip pentungan.
cara_kerja_mirip(balok, pentungan). %balok palsu cara kerja mirip pentungan.
cara_kerja_mirip(gunting, pisau). %gunting cara kerjanya mirip pisau.
cara_kerja_mirip(sepatu_bola, pentungan). %sepak bola cara kerjanya mirip pentungan.
kemungkinan_milik(X,sepatu_bola):- %X kemungkinan milik sepak bola.
orang(X,_,_,pemain_sepak_bola). %X orang yang pemain sepak bola.
kemungkinan_milik(X,gunting):- %X kemungkinan milik gunting.
orang(X,_,_,pekerja_salon).   %X orang pekerja salon.
kemungkinan_milik(X,Benda):-   %X kemungkinan milik benda.
milik(X,Benda).		%X milik benda.
%dicurigai semua orang yang memiliki senjata yang.
%kerjanya mirip dengan senjata penyebab siti terbunuh.
dicurigai(X):-			%siapa yang dicurigai.
terbunuh_dengan(siti,Senjata) ,  %siti terbunuh dengan senjata.
cara_kerja_mirip(Benda,Senjata) , %benda cara kerjanya mirip senjata.
kemungkinan_milik(X,Benda).	%dan X kemungkinan miliki benda.
%dicurigai laki-laki yang selingkuh dengan siti.
dicurigai(X):-  %siapa yang dicurigai.
motif(cemburu),  %cemburu adalah motifnya.
orang(X,_,m,_),  %siapa orangnya.
selingkuh(siti,X).%siti selingkuh dengan siapa.
%dicurigai perempuan yang selingkuh dengan.
%laki-laki yang juga selingkuh dengan siti.
dicurigai(X):-  %siapa yang dicurigai.
motif(cemburu),  %cemburu adalah motifnya.
orang(X,_,f,_),  %siapa orangnya.
selingkuh(X,Lakilaki), %siapa selingkuhanya laki-laki.
selingkuh(siti,Lakilaki). %siti selingkuh dengan laki-laki.
%dicurigai pencopet yang mempunyai motif uang. 
dicurigai(X):-	%siapa yang dicurigai.
motif(uang),  %uang adalah motifnya.
orang(X,_,_,pencopet).  %siapa orang yang pencopet.
pembunuh(Pembunuh):-    
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, %Bukan bunuh diri.
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat), %pembunuh ternodai dengan zat.
ternodai(Terbunuh,Zat). %terbunuh ternodai dengan zat.
GOAL	%berisi pernyataan yang diajukan kepada turbo prolog. bagian goal ini hanya dituliskan menggunakan kata tunggal, karena hanya boleh ada sebuah goal. 
pembunuh(X). %goal dapat terdiri dari beberapa subgoal. suatu pernyataan baik fakta,relasi atau goal dikatakan satu apabila diakhiri dengan tanda titik. jadi pada bagian.
%goal ini menanyakan tentang siapa pembunuhnya yaitu dengan bahasa pembunuh(X) dan pembunuhnya adalah budi.