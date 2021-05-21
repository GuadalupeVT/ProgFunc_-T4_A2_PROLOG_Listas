%estudiante(Id,nombre([Apellido,Nombre]),calificaciones([a1,a2,a3,examen])).

estudiante(1001,nombre([allteron,alice]), calificaciones([92,75,100,85])).
estudiante(1002,nombre([boberson,bob]), calificaciones([50,64,73,66])).
estudiante(1003,nombre([charleston,charlie]), calificaciones([65,75,85,100])).
estudiante(1004,nombre([davidson,dave]), calificaciones([10,92,34,87])).
estudiante(1005,nombre([ellenovitch,ellen]), calificaciones([72,87,82,70])).

%¿Cómo le fue a Alice en la tarea 1?
tarea1_alice(A1) :- estudiante(_,nombre([_,alice]),calificaciones([A1|_])).

%¿Cómo le fue a Alice en la tarea 2?
tarea2_alice(A2) :- estudiante(_,nombre([_,alice]),calificaciones([_,A2|_])).

%¿Cómo le fue al estudiante 1002 en el examen?
estudiante1002_examen(Examen) :- estudiante(1002,_,calificaciones([_,_,_,Examen])).
estudiante1002_examen_2(Examen) :- estudiante(1002,_,calificaciones(L)), last(L,Examen).


%¿Quien obtuvo 100 en el extamen?

%¿Alguien mas obtuvo 100 en algo?

%¿Cuál es la calificación promedio de cada estudiante? (asumir la misma ponderación)