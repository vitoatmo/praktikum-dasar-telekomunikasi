clear all;
close all;

% Percobaan 2.1 Melihat Sinyal Termodulasi FM 
fm=10; %Frekuensi sinyal informasi
fc=80; %Frekuensi sinyal carrier
t=0:0.0001:0.5;

Ai =20 %amplitudo sinyal informasi
m=Ai*cos(2*pi*fm*t); % sinyal informasi

figure('Name','Percobaan 2.1 Melihat Sinyal Termodulasi FM')

subplot(3,1,2);
plot(t,m); xlabel('Time'); ylabel('Amplitudo');
title('Message Signal'); grid on;

Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
subplot(3,1,1);
plot(t,c); xlabel('Time'); ylabel('Amplitudo');
title('Carrier Signal'); grid on;

y=Ac*cos(2*pi*fc*t+(m));
subplot(3,1,3);
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title('FM Signal'); grid on;

% 2.2 Pengaruh Frekuensi pada Sinyal Termodulasi FM
fm=10;

figure('Name','2.2.1. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,2,1); 
fc=10;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

figure('Name','2.2.2. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,2,2); 
fc=20;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

figure('Name','2.2.3. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,2,3); 
fc=40;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

figure('Name','2.2.4. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,2,4); 
fc=80;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

fc=10

figure('Name','2.2.5. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,1,1); 
fm=80;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

figure('Name','2.2.6. Pengaruh Frekuensi pada Sinyal Termodulasi FM')
% subplot(2,1,2); 
fm=30;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
Ac = 2; c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['fc: ',num2str(fc),'  fm: ',num2str(fm)]); grid on;

%% 2.3 Pengaruh Amplitudo pada Sinyal Termodulasi FM 

figure('Name','2.3. Pengaruh Frekuensi pada Sinyal Termodulasi FM')

subplot(3,2,1); Ac = 5; Ai =5; 
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);

subplot(3,2,3); Ac =5; Ai = 10;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);

subplot(3,2,5); Ac = 5; Ai =20; 
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);

subplot(3,2,2); Ac =10; Ai = 5;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);

subplot(3,2,4); Ac = 20; Ai =5; 
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);

subplot(3,2,6); Ac =20; Ai = 10;
m=Ai*cos(2*pi*fm*t); % sinyal informasi
c=Ac*cos(2*pi*fc*t); % sinyal carrier
y=Ac*cos(2*pi*fc*t+(m));
plot(t,y); xlabel('Time'); ylabel('Amplitudo');
title(['ac: ',num2str(Ac),'  ai: ',num2str(Ai)]);