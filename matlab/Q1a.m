%Histogrammes
%% Chargement des données
DataTable=readtable('Data.txt');
CrudeBirthRate = table2array(Data(:,2));
CrudeDeathRate = table2array(Data(:,3));

%% Construction de l'histogramme
%Histogramme du taux de maissances
figure
edges = [0:5:50];
histogram(CrudeBirthRate,edges);
title('Histogramme du taux de naissances');
xlabel('Nombre de naissance pour 1000 hab.');
ylabel('Nombre de pays');

%Histogramme du taux de mortalité
figure
edges = [0:5:20];
histogram(CrudeDeathRate,edges);
title('Histogramme du taux de mortalité');
xlabel('Nombre de mort pour 1000 hab.');
ylabel('Nombre de pays')
