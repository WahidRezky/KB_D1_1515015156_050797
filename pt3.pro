domains 
 pel, nama, nilai = symbol 
predicates 
 nondeterm matkul(pel,nama,nilai) 
 
clauses
 matkul(intelejensi_buatan,irfan,a).
 matkul(intelejensi_buatan,komeng,d).
 matkul(intelejensi_buatan,dati,c). 
 matkul(intelejensi_buatan,fatima,b). 
 matkul(intelejensi_buatan,maspion,c).
 matkul(pde,ricky,e).
 matkul(pde,embang,a).
 matkul(pde,salmin,d). 
 matkul(pde,vina,b).
 matkul(pde,sondang,c). 
 matkul(so,pamuji,d).
 matkul(so,luki,e).  
 matkul(so,sadek,b).  
 matkul(so,yusida,a). 
 matkul(so,eka,a).
 
goal
matkul(intelejensi_buatan,Nama,_);nl,
matkul(_,Nama_mahasiswa_yang_Tidak_Lulus,d); matkul(_,Nama_mahasiswa_yang_Tidak_Lulus,e);nl,
matkul(_,Nama_mahasiswa_Yang_Lulus,a); matkul(_,Nama_mahasiswa_Yang_Lulus,b); matkul(_,Nama_mahasiswa_Yang_Lulus,c);nl,
matkul(Matakuliah_yang_diajarkan,_,_);nl,
matkul(_,Nama_Mahasiswa,_).
  