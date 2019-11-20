
% Autor: Erik Zamora Gómez
% Fecha 31/07/2015
% Este código es distribuido bajo la licencia CC BY-NC-SA
clear ; close all; clc

load('NumerosManuscritos.mat'); 
Q = size(P, 2);
T = [ones(1,500); -ones(9,500)];
for i=1:9
    T = [T [-ones(i,500); ones(1,500); -ones(9-i,500)]];
end

% Valores iniciales
n1 = 25; 
ep = 0.1;
W1 = ep*(2*rand(n1,400) - 1);
b1 = ep*(2*rand(n1,1) - 1);
W2 = ep*(2*rand(10,n1) - 1);
b2 = ep*(2*rand(10,1) - 1);

% Usar one vs all
alfa = 0.01;

contadorIteraciones = 0;
 anta1 =0;
 anta2 =0;
while true
    contadorIteraciones = contadorIteraciones +1;
    for q = 1:Q
        a1 = tansig(W1*P(:,q) + b1);
        a2 = tansig(W2*a1 + b2);
        e = T(:,q) - a2;
        if anta1 == 0
            s2 = -2*diag(1-a2.^2)*e;
            length(s2)
            s1 = diag(1-a1.^2)*W2'*s2;
        else
            length((beta*(a1-anta1)))
            length(a1)
            
            s2 = -2*diag(1-a2.^2)*e*(beta*(a2-anta2))';
            s1 = diag(1-a1.^2)*W2'*s2*(beta*(a1-anta1));
        end
        % Actualización de pesos sinapticos y polarizaciones
        W2 = W2 - alfa*s2*a1';
        b2 = b2 - alfa*s2;
        W1 = W1 - alfa*s1*P(:,q)';
        b1 = b1 - alfa*s1;  
        % Error Cuadrático
        ec(q) = e'*e;
    end
    anta1 =a1;
    anta2 =a2;
    pesosGrafica1(contadorIteraciones)= W2(1);
    pesosGrafica2(contadorIteraciones)= W2(5);
    pesosGrafica3(contadorIteraciones)= W2(10);
    ecm(contadorIteraciones)= (sum(ec)^2)/(2*Q);
    auxiliarP=ecm(contadorIteraciones);
    set(handles.TBSiteracion,'string',contadorIteraciones)
    set(handles.TBSerror,'string',ecm(contadorIteraciones))
    if mod(contadorIteraciones,50) == 0
        axes(handles.Aerror); 
        plot(ecm);
    end
    if contadorIteraciones == iteraciones
        break
    end
    if ecm(contadorIteraciones) <= errorMin
        break
    end
end




% tic
% for Epocas = 1:500
%     for q = 1:Q
%         q = randi(Q);
%         % Propagación de la entrada hacia la salida
%         a1 = tg_sig(W1*P(:,q) + b1);
%         a2 = tg_sig(W2*a1 + b2);
%         % Retropropagación de la sensibilidades
%         e = T(:,q) - a2;
%         s2 = -2*diag(1-a2.^2)*e;
%         s1 = diag(1-a1.^2)*W2'*s2;
%         % Actualización de pesos sinapticos y polarizaciones
%         W2 = W2 - alfa*s2*a1';
%         b2 = b2 - alfa*s2;
%         W1 = W1 - alfa*s1*P(:,q)';
%         b1 = b1 - alfa*s1;  
%         % Error Cuadrático
%         ec(q) = e'*e;
%     end
%     ecm(Epocas)= sum(ec)/Q;
%     if mod(Epocas,50) == 0
%         toc
%         Epocas
%         plot(ecm)
%         pause(0.1)
%         tic
%     end
% end
% toc
% plot(ecm)
% 
% % Verificación
% for q=1:Q
%     a1 = tg_sig(W1*P(:,q) + b1);
%     [a iwin(q)] = max(W2*a1 + b2);
% end
% y = [1*ones(1,500)];
% for i=2:10
%     y = [y [i*ones(1,500)]];
% end
% NumeroAciertos = sum(y==iwin)
% PorcentajeAciertos = NumeroAciertos/5000*100
% 
% %Rutina aleatoria para ver imagen y el reconocimiento
% % figure, 
% % for veces=1:50
% %     q = round(4999*rand + 1);
% %     numeroreconocido = iwin(q)-1
% %     imshow(vec2mat(P(:,q),20)','InitialMagnification',300)
% %     pause
% % end
