h=0.1;
u=500;
m=200;
k=100;
v(1)=0;
T=15;
v0=0;
t=0:h:T;

for n=2:T/h+1,
    v(n)=v(n-1)+h*(-k/m*v(n-1)+(1/m)*u);
    v_eksakt=exp((-(k/m)*t))*(v0-(u/k))+(u/k);
end



plot(t,v)
grid on;
hold on;
plot(t,v_eksakt)
hold off






