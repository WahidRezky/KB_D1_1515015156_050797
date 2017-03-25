domains
  lauk,minum,x= symbol
  harga = unsigned

predicates
  nondeterm menu(lauk)
  nondeterm paket(lauk,minum,harga)
  nondeterm cafe(lauk,x)

clauses
 cafe(X,roma):-
  	menu(X),
  	paket(X,teh,Z),
  	Z < 7000.
  	
  menu(tahu).
  menu(tempe).
  menu(telur).
  menu(ayam).
  
  paket(tahu,teh,5000).
  paket(tempe,kopi,5000).
  paket(telur,susu,5000).
  paket(ayam,jus,7000).
  

goal
  cafe(X,roma);nl,
  paket(X1,_,5000),
  paket(X2,_,5000),
  X1 <> X2.