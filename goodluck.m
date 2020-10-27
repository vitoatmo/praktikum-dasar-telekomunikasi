function [g]=goodluck(peserta,keaktifan) %assss
    switch
        case {'ga ada'}
            n = 0 % basic, no bonus
n = n+2 % dokumen lengkap
n = n+3 % penugasan lengkap
n = n+10 % aktif bertanya
% n = n+15 % ditanya bisa menjawab (semua orang bisa)

peserta = 1
nilai = zeros(1,peserta)
nilai = nilai + randi([65+n,95],1,peserta)
end
