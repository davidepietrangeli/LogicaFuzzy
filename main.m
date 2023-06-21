% Carica il sistema fuzzy dal file separato
fis = readfis('prova.fis');

% Definisci i valori di input
posizione_classifica_piloti = 15;
stato_di_forma = 1;
vittorie_stagionali = 2;
salute_pilota = 1;
cadute_stagionali = 2;
classifica_marca_moto =1;

% Valori di input come vettore
input = [posizione_classifica_piloti stato_di_forma vittorie_stagionali salute_pilota cadute_stagionali classifica_marca_moto];

% Esegui la valutazione del sistema fuzzy
output = evalfis(input, fis);

% Visualizza il risultato
disp(['La previsione per la classifica dei piloti è: ' num2str(output)]);
