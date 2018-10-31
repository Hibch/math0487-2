%Moyennes, médianes, modes et écart-types

%% Chargement des données %%
DataTable=readtable('Data.txt');
CrudeBirthRate = table2array(Data(:,2));
CrudeDeathRate = table2array(Data(:,3));
%% Calcul des paramètres %%
%Moyennes 
mean_birth=mean(CrudeBirthRate);
mean_death=mean(CrudeDeathRate);

%Médianes
med_birth=median(CrudeBirthRate);
med_death=median(CrudeDeathRate);

%Modes
mode_birth=mode(CrudeBirthRate);
mode_death=mode(CrudeDeathRate);

%Ecart-Types
s_birth=sqrt(var(CrudeBirthRate));
s_death=sqrt(var(CrudeDeathRate));

%% Resultats %%
Natalite=[mean_birth;med_birth;mode_birth;s_birth];
Mortalite=[mean_death;med_death;mode_death;s_death];
Param=[{'Moyenne';'Mediane';'Mode';'Ecart-Type'}];
T = table(Param,Natalite,Mortalite)
