
errorMin = 0.0005;
iteraciones = 2000;
umbral = 0.01;
nmuestras = 5;
coeficienteAprendizaje  = 0.000005;
beta = 0.1;
Tb1 = 0.5;%h
Tb2 = 0.5;%o



%Patrones de entrenamiento 120000(tamañoimagen200*200*3RGB)*numeromuestras*4grupos
[P inf] = getImagesVector(nmuestras,1);
%longitud del vector de muestra individual
Q = size(P, 2);
longP = size(P, 1);
%Resultados esperados


pesosGrafica1= ones(1,iteraciones);
pesosGrafica2= ones(1,iteraciones);
pesosGrafica3= ones(1,iteraciones);

% T = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1  1  1  1  1  1  1  1  1  1  1 ;
%      -1 -1 -1 -1 -1  1  1  1  1  1 -1 -1 -1 -1 -1  1  1  1  1  1 ;];
cont = 1;
    for i=1:nmuestras*2
        T(1,cont)=-1;
        cont = cont +1;
    end
    for i=1:nmuestras*2
        T(1,cont)=1;
        cont = cont +1;
    end
cont =1;
for k=1:2
    for i=1:nmuestras
        T(2,cont)=-1;
        cont = cont +1;
    end
    for i=1:nmuestras
        T(2,cont)=1;
        cont = cont +1;
    end
end


setGlobalpatrones(P, inf);
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.name);
datosImagenes(:,1) = string(info); 
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.folder);
%set(handles.Timages,'data',info);
datosImagenes(:,2) = string(info);

n1 = 100; %numero de neuronas en la capa oculta
ep = umbral;%deafult 0.1
W1 = ep*(2*rand(n1,longP) - 1);%inicializacion de pesos de entrada
b1 = ep*(2*rand(n1,1) - 1); % inicializacion de bias
W2 = ep*(2*rand(2,n1) - 1); %inicializacion de pesos de salida
b2 = ep*(2*rand(2,1) - 1); % inicializacion de bias salida

conservaPesos=0;
ggggg.w1 = W1;
ggggg.w2 = W2;
ggggg.b1 = b1;
ggggg.b2 = b2;
if conservaPesos == 0
    setGlobalW(W1,b1,W2,b2);
else
    [W1,b1,W2,b2]=getGlobalW();
end

aaaaa1 = W1;
aaaaa2 = W2;
aaaaa3 = b1;
aaaaa4 = b2;

% if thetaAut == 0
%     b1 = (Tb1*ones(n1,1)); % inicializacion de bias
%     b2 = (Tb2*ones(2,1)); % inicializacion de bias salida
% end

% coeficiente de aprendizaje
alfa = coeficienteAprendizaje;

contadorIteraciones = 0;
 anta1 =0;
 anta2 =0;
while true
    contadorIteraciones = contadorIteraciones +1;
    for q = 1:Q
        a1 = tansig(W1*P(:,q) + b1);
        a2 = tansig(W2*a1 + b2);
%         a1 = 1/(1+exp(-1*((W1*P(:,q) + b1)-0)));
%         a1=a1';
%         a2 = 1/(1+exp(-1*((W2*a1 + b2)-0)));
%         a2=a2';
        e = T(:,q) - a2;
        s2 = -1*diag(1-a2.^2)*e;
        s1 = diag(1-a1.^2)*W2'*s2;
        % Actualización de pesos sinapticos y polarizaciones
        W2 = W2 - alfa*s2*a1'+(beta*(anta2-W2));
        kk1 = anta2;
        kk2 = anta1;
        b2 = b2 - alfa*s2;
        W1 = W1 - alfa*s1*P(:,q)'+(beta*(anta1-W1));
        b1 = b1 - alfa*s1;  
        % Error Cuadrático
        ec(q) = e'*e;
    end
    anta1 =W1;
    anta2 =W2;
    pesosGrafica1(contadorIteraciones)= W2(1);
    pesosGrafica2(contadorIteraciones)= W2(5);
    pesosGrafica3(contadorIteraciones)= W2(10);
    ecm(contadorIteraciones)= (sum(ec)^2)/(2*Q);
    auxiliarP=ecm(contadorIteraciones);
    if mod(contadorIteraciones,50) == 0
        errorPromedioo =  ecm(contadorIteraciones)
        contadorIteraciones
        plot(ecm);
    end
    if mod(contadorIteraciones,1000) == 0
        filename = 'esapcioFinal2m.mat';
        save(filename)
    end
    if contadorIteraciones == iteraciones
        break
    end
    if ecm(contadorIteraciones) <= errorMin
        break
    end
end
filename = 'esapcioFinal2m.mat';
save(filename)
setGlobalgraficaPesos(pesosGrafica1,pesosGrafica2,pesosGrafica3);


function setGlobalpatrones(val,info)
global patrones
patrones = val;
global informacion
informacion = info;
end
function [r info] = getGlobalpatrones
global patrones
r = patrones;
global informacion
info = informacion;
end
function setGlobalpesos(val)
global pesos
pesos = val;
end
function r = getGlobalpesos
global pesos
r = pesos;
end
function setGlobalW(w1,b1,w2,b2)
global gw1
gw1 = w1;
global gb1
gb1 = b1;
global gw2
gw2 = w2;
global gb2
gb2 = b2;
end

function [w1,b1,w2,b2] = getGlobalW
global gw1
w1 = gw1;
global gb1
b1 = gb1;
global gw2
w2 = gw2;
global gb2
b2 = gb2;
end
function setGlobalgraficaPesos(w1,w2,w3)
p(:,1) = w1;
p(:,2) = w2;
p(:,3) = w3;
global pesosGrafica
pesosGrafica = p;
end 
function r = getGlobalgraficaPesos
global pesosGrafica
r = pesosGrafica;
end

function r = sigmoide(w)
r = 1/(1+exp(-1*(w-0)));
end