clear all;
close all;
clc;
hold on;

output = sim("Oppgave3d.slx");, 
plot(output.x.Data, output.z.Data)

xlabel("x");
ylabel("z");
legend("show");
title("posisjon til ubåten");
hold off;
