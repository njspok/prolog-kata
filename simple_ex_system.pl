% Факты о болезнях
disease(fever).
disease(cold).
disease(flu).
disease(pneumonia).
disease(rabies).

% Факты о симптомах
symptom(fever, high_temperature).
symptom(fever, shivering).
symptom(cold, runny_nose).
symptom(cold, sneezing).
symptom(flu, headache).
symptom(flu, muscle_aches).
symptom(pneumonia, cough).
symptom(pneumonia, chest_pain).
symptom(rabies, aggression).
symptom(rabies, foaming_at_the_mouth).

% Правила для диагностики болезней
diagnose(Disease) :-
    symptom(Disease, Symptom),
    ask(Symptom).

ask(Question) :-
    write('Does the animal have the following symptom: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    (Response == yes -> true ; fail).

% Запуск экспертной системы
start :-
    write('Welcome to the animal disease diagnosis system.'),
    nl,
    write('Please answer the following questions with yes or no:'),
    nl,
    diagnose(Disease),
    write('The animal may have '), write(Disease), write('.'),
    nl,
    write('Thank you for using our system.').

