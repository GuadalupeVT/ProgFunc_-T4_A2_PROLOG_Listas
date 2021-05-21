% -Contar los elementos de una lista => cuenta_elementos
% - Sumar los elementos de una lista => suma_lista
% -Copiar una lista => copia
% -Concatenar 2 listas => concatenar

% PRIMER CASO
% -La lista está vacía
% predicado([]):-procesar(|[]).
% predicado([cabeza|cola]):-procesar(cabeza),predicado(cola).

% ------------Contar los elementos de una lista-----------
%cuenta_elementos([1,2,3,4],4). 
%cuenta_elementos([1,2,3,4],N).
%cuenta_elementos([6,2,4,0,1,0],N).
cuenta_elementos([],0).
cuenta_elementos([_|L],N) :- cuenta_elementos(L,Tam), N is Tam+1.

% cuenta_elementos([4,2,7],N)                                  N=2+1 = 3
% cuenta_elementos([4|2,7],N) :- cuenta_elementos([2,7]),Tam), N is Tam+1                N=1+1 = 2
                                 %cuenta_elementos([2|7],N):- cuenta_elementos([7],Tam), N is Tam+1                N=0+1 = 1
                                                             %cuenta_elementos([7|],NN):-cuenta_elementos([],Tam), N is Tam+1
                                                                                        %cuenta_elementos([],0).

%---------Sumar los elementos de una lista---------
%Caso base
suma_lista([],0).
%caso recursivo
suma_lista([X|L],N) :- suma_lista(L,C), N is C+X.

%suma_lista([4,7,2],N).                       N=9+4 = 13
%suma_lista(4|7,2],N) :- suma_lista([7,2],C), N is C+X            N=2+7 = 9
                         %suma_lista([7|2],N):- suma_lista([2],C),N is C+X.           N=0+2 = 2
                                               %suma_lista([2|],N):-suma_lista([],C), N is C+X.
                                                                   %suma_lista([],0).


      