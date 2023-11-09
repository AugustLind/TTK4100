A = 1;
k = 1;
p = 1000;
h_r = 0.5;
Kp = 100;
Ki = 3; 
w_f = 10;

T_values = [0, 3, 6, 9];

stverdi_values = zeros(1, numel(T_values));
figure;

for i = 1:numel(T_values)
    T = T_values(i);
    output = sim("SimulinkTankregulering.slx");

    h = output.h.Data;
    stverdi = h(end);
    stverdi = h_r - stverdi;
   
    
    stverdi_values(i) = stverdi;

    hold on;
    plot(output.h.time, output.h.Data,'DisplayName', ['Tidsforsinkelse = ' num2str(T)]);
    xlabel("Tid");
    ylabel("Høyde");
    title("Høyden i tanken over tid");
    grid on;
    legend("show");
end

for i = 1:numel(T_values)
    disp(['Stasjonærverdi for høyde (T = ' num2str(T_values(i)) '): ' num2str(stverdi_values(i))]);
end
