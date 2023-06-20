% Carica il sistema fuzzy dal file separato
fis = readfis('sistema_fuzzy.fis');

% Definisci i valori di input
posizione_classifica_piloti = 15;
stato_di_forma = 3;
vittorie_stagionali = 2;
infortunio_pilota = 1;
cadute_stagionali = 2;

% Valori di input come vettore
input = [posizione_classifica_piloti stato_di_forma vittorie_stagionali infortunio_pilota cadute_stagionali];

% Esegui la valutazione del sistema fuzzy
output = evalfis(input, fis);

% Visualizza il risultato
disp(['La previsione per la classifica dei piloti �: ' num2str(output)]);
