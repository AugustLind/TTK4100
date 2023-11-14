L_a = 1;
R_a = 10;
K_e = 1;
K_M = 1;
M_L = 0;
J_m = 0.01;
theta_r = pi/2;


output = sim("LikestromsmotorSimulink.slx")

outputZiegler = sim("LikestromsmotorSimulinkVariables.slx")

plot(output.theta.time,output.theta.Data,'DisplayName',['Tune'])
hold on
plot(outputZiegler.theta.time,outputZiegler.theta.Data,'DisplayName',['Ziegler Nichols'])
legend("show")
hold off



