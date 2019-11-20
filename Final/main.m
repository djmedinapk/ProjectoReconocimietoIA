clc 
clear all

P = getImagesVector(5);

Q = size(P, 2);

% T = [1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1;
%     -1 -1 -1 -1 -1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1;
%      -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 -1 -1 -1 -1 -1;
%      -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1;];
T = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1  1  1  1  1  1  1  1  1  1  1 ;
     -1 -1 -1 -1 -1  1  1  1  1  1 -1 -1 -1 -1 -1  1  1  1  1  1 ;];
% T = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1;
%      -1 -1 -1 -1 -1 -1 -1 -1 -1 -1  1  1  1  1  1  1  1  1  1  1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1  1  1  1  1  1   1  1  1  1  1 ;];

n1 = 50; 
ep = 0.1;
W1 = ep*(2*rand(n1,120000) - 1);
b1 = ep*(2*rand(n1,1) - 1);
W2 = ep*(2*rand(2,n1) - 1);
b2 = ep*(2*rand(2,1) - 1);

% Usar one vs all
alfa = 0.05;
tic
tic
for Epocas = 1:500
    for q = 1:Q
        a1 = tansig(W1*P(:,q) + b1);
        a2 = tansig(W2*a1 + b2);
        % Retropropagación de la sensibilidades
        e = T(:,q) - a2;
        s2 = -2*diag(1-a2.^2)*e;
        s1 = diag(1-a1.^2)*W2'*s2;
        % Actualización de pesos sinapticos y polarizaciones
        W2 = W2 - alfa*s2*a1';
        b2 = b2 - alfa*s2;
        W1 = W1 - alfa*s1*P(:,q)';
        b1 = b1 - alfa*s1;  
        % Error Cuadrático
        ec(q) = e'*e;
    end
    ecm(Epocas)= sum(ec)/Q;
    if mod(Epocas,50) == 0
        toc
        Epocas
        plot(ecm)
        pause(0.1)
        tic
    end
end
toc
toc


plot(ecm)
