%Question 2
clear
clc
%Construct V using vectorial operations

t=0;
N=4;
r=0.03;
gamma=0.05;

%vector de cupones
vcupones = [gamma, gamma, gamma, 1+gamma];

%vector T_i
vTi = [180*1, 180*2, 180*3, 180*4];

%calculamos los flujos descontados en forma vectorial
vdisc = [0 0 0 0];

for i = 1:N 
    vdisc(i) = vcupones(i)/((1 + r)^((vTi(i)-t)/360));
end

%calculamos el valor del bono usando operaciones vectoriales
V = sum(vdisc);

disp("el valor del bono es de $" + V)







