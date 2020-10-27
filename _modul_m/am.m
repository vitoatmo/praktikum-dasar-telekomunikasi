clear all;
close all;

%% Percobaan 1.1 Melihat Proses dan Output sinyal Modulasi Amplitudo 
fm=100; %frekuensi sinyal informasi
fc=800; %frekuensi sinyal carrier
m=0.7; %indeks modulasi

A=5; %amplitudo
t=0:0.0001:0.5; %timefunction
y=A*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t); %sinyal tergenerasi

figure('Name','Percobaan 1.1 Melihat Proses dan Output sinyal Modulasi Amplitudo')

plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

%% Percobaan 1.2 Pengaruh Frekuensi Sinyal Carrier dan Informasi pada AM 

figure('Name','Percobaan 1.2 Pengaruh Frekuensi Sinyal Carrier dan Informasi pada AM')

subplot(4,2,1)
fc=800;fm=100
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,2)
fc=800;fm=200
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,3)
fc=800;fm=400
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,4)
fc=800;fm=800
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,5)
fc=800;fm=1000
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,6)
fc=800;fm=1200
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

subplot(4,2,7)
fc=800;fm=2000
plot(t,y); title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

%% Percobaan 1.3 Pengaruh Amplitudo pada Sinyal Termodulasi AM 
fc = 800
fm = 100

figure('Name','Percobaan 1.3 Pengaruh Amplitudo pada Sinyal Termodulasi AM')

subplot(3,2,1); A=1; 
plot(t,y); title(['A=',num2str(A)]); grid on;
subplot(3,2,2); A=5; 
plot(t,y); title(['A=',num2str(A)]); grid on;
subplot(3,2,3); A=10; 
plot(t,y); title(['A=',num2str(A)]); grid on;
subplot(3,2,4); A=20; 
plot(t,y); title(['A=',num2str(A)]); grid on;
subplot(3,2,5); A=50; 
plot(t,y); title(['A=',num2str(A)]); grid on;

%% Percobaan 1.4 Efek indeks Modulasi Amplitudo pada Sinyal Termodulasi AM 

fm=100;

figure('Name','Percobaan 1.4 Efek indeks Modulasi Amplitudo pada Sinyal Termodulasi AM ')

subplot(6,2,1); fc=100; m=0.01; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,2); fc=800; m=0.01; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,3); fc=100; m=0.3; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,4); fc=800; m=0.3; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,5); fc=100; m=0.5; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,6); fc=800; m=0.5; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,7); fc=100; m=0.7; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,8); fc=800; m=0.7; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,9); fc=100; m=0.9; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,10); fc=800; m=0.9; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,11); fc=100; m=0.999; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;

subplot(6,2,12); fc=800; m=0.999; 
plot(t,y); title(['fc=',num2str(fc),'  m=',num2str(m)]); grid on;