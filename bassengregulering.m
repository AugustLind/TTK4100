clear all;
close all;
clc;

k = 350;
C = 4184 * 54000;
kp = 10000;
ki = 0.007;


output = sim("BassengreguleringSimulink.slx");
timeRange = [0, 3600*142];

figure; 
plot(output.T.time, output.T.Data);
hold on;  
yline(25, 'r', '25 grader');  
xlabel("Tid");
ylabel("Temp");
title("Temperatur i forhold til tid");
grid on;
xlim(timeRange);

figure;
plot(output.u.time, output.u.Data);
xlabel("Tid");
ylabel("Pådrag");
title("Pådrag i forhold til tid");
grid on;
xlim(timeRange);
hold off;  
    