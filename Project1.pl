%166912
%Project 1
%Towers of Hanoi

%only 1 disk:
move(1,Inicio,Fin,_) :- %1 disk from Inicio to Fin
   write('Move top disk from '),
   write(Inicio), %where you are taking the disk
   write(' pole to '),
   write(Fin), % where the disk is going
   write(' pole.'),
   nl. %space

%more than 1 disk:
move(N,Inicio,Fin,Restante) :-
   N>1,  %when there is more than 1 disk
   M is N-1, %disks that can not move because 1 at a time
   move(M,Inicio,Restante,Fin), %move all except top disk
   move(1,Inicio,Fin,_), %move top disk from Inicio to Fin
   move(M,Restante,Fin,Inicio). %move remaining disks
:- initialization(main). %call main

%we will be moving n=3 disks from the first to the last tower
main :- move(3, first , last, middle).
