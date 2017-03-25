/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  car(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i) %untuk menentukan symbolic relasi pernyataan, penyataan, pernyataan, pernyataan, pertanyaan
  truck(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i) %untuk menentukan symbolic relasi pernyataan, penyataan, pernyataan, pernyataan, pertanyaan
  vehicle(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i) %untuk menentukan symbolic relasi pernyataan, penyataan, pernyataan, pernyataan, pertanyaan

clauses
  car(chrysler,130000,3,red,12000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
  car(ford,90000,4,gray,25000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
  car(datsun,8000,1,red,30000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih

  truck(ford,80000,6,blue,8000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
  truck(datsun,50000,5,orange,20000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
  truck(toyota,25000,2,black,25000). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih

  vehicle(Make,Odometer,Age,Color,Price):- %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
	car(Make,Odometer,Age,Color,Price); %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih
	truck(Make,Odometer,Age,Color,Price). %suatu kenyataan yang di ketahui menyatakan relasi antara dua object atau lebih

goal
  car(Make,Odometer,Years_on_road,Body,25000). % untuk menentukan hasil keluaran dari fakta
