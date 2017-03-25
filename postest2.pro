nowarnings

domains
product,umur = integer
brand,color = symbol
price = ulong
a,b = symbol
person = symbol

predicates
run - nondeterm ()
umur(umur,umur,umur) - procedure (i,i,o)
nondeterm tas(brand,color,price)
nama(person) - nondeterm (o)
nama(person,person) - nondeterm (o,o)

clauses
run:-
	write("Tengkyuuu"),nl,
	readchar(_).
nama(Man):-
nama(Man,_).
nama("Wahid Rezky",seth).
 
	
umur(X,Y,Umur):-
	Umur=X+Y.
tas(bonjour,black,12000).
tas(visval,navy,25000).

  

goal
nama(Nama_Lengkap);
umur(12,8,Umur);
tas(Brand,Clolor,Harga),Harga<30000;
run.