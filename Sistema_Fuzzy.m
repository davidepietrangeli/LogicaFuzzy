% Crea l'oggetto per il sistema fuzzy
fis = newfis('SistemaFuzzy');

% Definisci le variabili di input
fis = addvar(fis, 'input', 'posizione_classifica_piloti', [1 22]);
fis = addvar(fis, 'input', 'stato_di_forma', [1 5]);
fis = addvar(fis, 'input', 'vittorie_stagionali', [0 5]);
fis = addvar(fis, 'input', 'infortunio_pilota', [0 5]);
fis = addvar(fis, 'input', 'cadute_stagionali', [0 5]);
fis = addvar(fis, 'input', 'classifica_marca_moto', [1 5]);

% Definisci la variabile di output
fis = addvar(fis, 'output', 'classifica_piloti', [1 22]);

% Definisci le funzioni di appartenenza per le variabili di input e output
fis = addmf(fis, 'input', 1, 'alta', 'trimf', [1 1 7]);
fis = addmf(fis, 'input', 1, 'media', 'trimf', [5 11 17]);
fis = addmf(fis, 'input', 1, 'bassa', 'trimf', [13 22 22]);

fis = addmf(fis, 'input', 2, 'ottimo', 'trimf', [1 1 2]);
fis = addmf(fis, 'input', 2, 'buono', 'trimf', [1 3 5]);
fis = addmf(fis, 'input', 2, 'medio', 'trimf', [2 4 6]);
fis = addmf(fis, 'input', 2, 'scarso', 'trimf', [3 5 5]);

fis = addmf(fis, 'input', 3, 'nessuna', 'trimf', [0 0 1]);
fis = addmf(fis, 'input', 3, 'poche', 'trimf', [1 2 3]);
fis = addmf(fis, 'input', 3, 'alcune', 'trimf', [2 3 4]);
fis = addmf(fis, 'input', 3, 'molte', 'trimf', [4 5 5]);

fis = addmf(fis, 'input', 4, 'sano', 'trapmf', [0 0 1 1]);
fis = addmf(fis, 'input', 4, 'indolenzito', 'trapmf', [0 1 2 3]);
fis = addmf(fis, 'input', 4, 'infortunato', 'trapmf', [2 3 5 5]);

fis = addmf(fis, 'input', 5, 'nessuna', 'trapmf', [0 0 0 1]);
fis = addmf(fis, 'input', 5, 'poche', 'trimf', [0 1 2]);
fis = addmf(fis, 'input', 5, 'alcune', 'trimf', [1 2 3]);
fis = addmf(fis, 'input', 5, 'molte', 'trimf', [2 3 5]);

fis = addmf(fis, 'input', 6, 'prima', 'trapmf', [0 0 1 2]);
fis = addmf(fis, 'input', 6, 'seconda', 'trapmf', [1 2 3 4]);
fis = addmf(fis, 'input', 6, 'terza', 'trapmf', [3 4 5 6]);
fis = addmf(fis, 'input', 6, 'quarta', 'trapmf', [5 6 7 8]);
fis = addmf(fis, 'input', 6, 'quinta', 'trapmf', [7 8 9 10]);

% Definizione della variabile di output fuzzy
fis = addvar(fis, 'output', 'classifica_piloti', [1 22]);

% Definizione delle funzioni di appartenenza per la variabile di output
for i = 1:22
    fis = addmf(fis, 'output', 1, ['posizione', num2str(i)], 'trapmf', [i-1 i i+1 i+2]);
end
