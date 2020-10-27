clear

%% parameter penilaian random vito
% nilai minimal adalah 65 dan maksimal 95
% n adalah nilai bonus, berlaku untuk semua jika:
% 1. semua praktikan hadir dan lengkap
% 2. semua praktikan dokumen lengkap

% n = 0 % basic, no bonus
% n = n+2 % dokumen lengkap
% n = n+3 % penugasan lengkap
% n = n+10 % aktif bertanya
% n = n+15 % ditanya bisa menjawab (semua orang bisa)

%% berdoa dahulu sebelum tahu nilaimu
peserta = input('Berapa peserta praktikum yang hadir: ');
% bonus
n = 0; %bonus

% nilai
nilai = zeros(1,peserta)
nilai = nilai + randi([65+n,95],1,peserta);
nilai

% s0 = modul(b, 'unipolar_nrz', Fd, Fs);