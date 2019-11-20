function varargout = FINAL(varargin)
% FINAL MATLAB code for FINAL.fig
%      FINAL, by itself, creates a new FINAL or raises the existing
%      singleton*.
%
%      H = FINAL returns the handle to a new FINAL or the handle to
%      the existing singleton*.
%
%      FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINAL.M with the given input arguments.
%
%      FINAL('Property','Value',...) creates a new FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FINAL_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FINAL_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FINAL

% Last Modified by GUIDE v2.5 27-May-2019 23:27:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FINAL_OpeningFcn, ...
                   'gui_OutputFcn',  @FINAL_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT


% --- Executes just before FINAL is made visible.
function FINAL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FINAL (see VARARGIN)

% Choose default command line output for FINAL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%
% UIWAIT makes FINAL wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FINAL_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function TBSerror_Callback(hObject, eventdata, handles)
% hObject    handle to TBSerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TBSerror as text
%        str2double(get(hObject,'String')) returns contents of TBSerror as a double


% --- Executes during object creation, after setting all properties.
function TBSerror_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TBSerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TBSiteracion_Callback(hObject, eventdata, handles)
% hObject    handle to TBSiteracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TBSiteracion as text
%        str2double(get(hObject,'String')) returns contents of TBSiteracion as a double


% --- Executes during object creation, after setting all properties.
function TBSiteracion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TBSiteracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB1_Callback(hObject, eventdata, handles)
% hObject    handle to TB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB1 as text
%        str2double(get(hObject,'String')) returns contents of TB1 as a double


% --- Executes during object creation, after setting all properties.
function TB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB2_Callback(hObject, eventdata, handles)
% hObject    handle to TB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB2 as text
%        str2double(get(hObject,'String')) returns contents of TB2 as a double


% --- Executes during object creation, after setting all properties.
function TB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB3_Callback(hObject, eventdata, handles)
% hObject    handle to TB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB3 as text
%        str2double(get(hObject,'String')) returns contents of TB3 as a double


% --- Executes during object creation, after setting all properties.
function TB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB4_Callback(hObject, eventdata, handles)
% hObject    handle to TB4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB4 as text
%        str2double(get(hObject,'String')) returns contents of TB4 as a double


% --- Executes during object creation, after setting all properties.
function TB4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB5_Callback(hObject, eventdata, handles)
% hObject    handle to TB5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB5 as text
%        str2double(get(hObject,'String')) returns contents of TB5 as a double


% --- Executes during object creation, after setting all properties.
function TB5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TB6_Callback(hObject, eventdata, handles)
% hObject    handle to TB6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TB6 as text
%        str2double(get(hObject,'String')) returns contents of TB6 as a double


% --- Executes during object creation, after setting all properties.
function TB6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TB6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in BTentrenar.
function BTentrenar_Callback(hObject, eventdata, handles)
% hObject    handle to BTentrenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
errorMin = get(handles.TB1,'String'); %edit1 being Tag of ur edit box
iteraciones = get(handles.TB2,'String'); %edit1 being Tag of ur edit box
umbral = get(handles.TB3,'String'); %edit1 being Tag of ur edit box
nmuestras = get(handles.TB4,'String'); %edit1 being Tag of ur edit box
coeficienteAprendizaje = get(handles.TB5,'String'); %edit1 being Tag of ur edit box
beta = get(handles.TB6,'String'); %edit1 being Tag of ur edit box
thetaAut = get(handles.CBtheta, 'Value');
Tb1 = get(handles.b1,'String');
Tb2 = get(handles.b2,'String');
conservaPesos = get(handles.CBconservaw, 'Value');
beta = get(handles.TB6,'String');

errorMin = str2num(errorMin);
iteraciones = str2num(iteraciones);
umbral = str2num(umbral);
nmuestras = str2num(nmuestras);
coeficienteAprendizaje  = str2num(coeficienteAprendizaje);
beta = str2num(beta);
Tb1 = str2num(Tb1);
Tb2 = str2num(Tb2);

set(handles.CBconservaw,'visible','on');




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

set(handles.Timagenes,'String',datosImagenes(1:10,1));
set(handles.Timagenes2,'String',datosImagenes(10:20,1));

n1 = 100; %numero de neuronas en la capa oculta
ep = umbral;%deafult 0.1
W1 = ep*(2*rand(n1,longP) - 1);%inicializacion de pesos de entrada
b1 = ep*(2*rand(n1,1) - 1); % inicializacion de bias
W2 = ep*(2*rand(2,n1) - 1); %inicializacion de pesos de salida
b2 = ep*(2*rand(2,1) - 1); % inicializacion de bias salida

if conservaPesos == 0
    setGlobalW(W1,b1,W2,b2);
else
    [W1,b1,W2,b2]=getGlobalW();
end

if thetaAut == 0
    b1 = (Tb1*ones(n1,1)); % inicializacion de bias
    b2 = (Tb2*ones(2,1)); % inicializacion de bias salida
end

% coeficiente de aprendizaje
alfa = coeficienteAprendizaje;

contadorIteraciones = 0;
 anta1 =0;
 anta2 =0;
while true
    contadorIteraciones = contadorIteraciones +1;
    for q = 1:Q
        a1 = tansig(W1*P(:,q) + b1); %tangente hiperbolica sigmoidal
%         a1 = 1/(1+exp(-1*((W1*P(:,q) + b1)-0))); %sigmoide
%         a1=a1';
        a2 = tansig(W2*a1 + b2);% tangente hiperbolica sigmoidal
%         a2 = 1/(1+exp(-1*((W2*a1 + b2)-0))); %sigmoide
%         a2=a2';
        e = T(:,q) - a2; % error esperado - el obtenido
        s2 = -1*diag(1-a2.^2)*e; %multiplicacion del error por las salida de la capa, diag es una matriz diagonal para poder hacer bien la multiplicacion
        s1 = diag(1-a1.^2)*W2'*s2;%x2 error de la capa oculta, se multiplica los errores de la capa de salida  por los los pesos de la capa de salida para saber cuanto aporta cada neurona a la respuesta o al error y hay si se multilica por los pesos de la capa entrada - oculta
        % Actualización de pesos sinapticos y polarizaciones
        W2 = W2 - alfa*s2*a1';%+(beta*(anta2-W2)); %actualizazcion de los pesos de salida pesos - error*coeficiente de aprendizaje + momentum(beta*(W(t)-W(t+1)) anterior menos el actual
        b2 = b2 - alfa*s2; % actualizacion del bias de cada theta
        W1 = W1 - alfa*s1*P(:,q)';%+(beta*(anta1-W1));
        b1 = b1 - alfa*s1;  
        
        
        % Error Cuadrático
        ec(q) = e'*e;
    end
    anta1 =W1;
    anta2 =W2;
    pesosGrafica1(contadorIteraciones)= W2(1);
    pesosGrafica2(contadorIteraciones)= W2(5);
    pesosGrafica3(contadorIteraciones)= W2(10);
    ecm(contadorIteraciones)= (sum(ec))/(2*Q);
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
setGlobalWfinal(W1,b1,W2,b2);
set(handles.Twin,'data',W1);
set(handles.Twout,'data',W2);

setGlobalgraficaPesos(pesosGrafica1,pesosGrafica2,pesosGrafica3);


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pushbutton3
pesos = getGlobalgraficaPesos();
ww = figure;
figure(ww);
t=(0:length(pesos(:,1))-1);
plot(t,pesos(:,1));hold on;
plot(t,pesos(:,2));hold on;
plot(t,pesos(:,3));

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[P info] = getGlobalpatrones();
f = figure;
figure(f);
subplot(1,3,1);
szdim = size(P,2);
szdim = szdim/4;
img1 = P(:,szdim*1);
img2 = P(:,szdim*2);
img3 = P(:,szdim*3);
img4 = P(:,szdim*4); 
sizee = length(img1);

imgR(:,1) = img1((1:sizee/3));
imgG(:,1) = img1(((1:sizee/3)+sizee/3));
imgB(:,1) = img1(((1:sizee/3)+(sizee/3)*2));


imgR(:,2) = img2((1:sizee/3));
imgG(:,2) = img2(((1:sizee/3)+sizee/3));
imgB(:,2) = img2(((1:sizee/3)+(sizee/3)*2));

imgR(:,3) = img3((1:sizee/3));
imgG(:,3) = img3(((1:sizee/3)+sizee/3));
imgB(:,3) = img3(((1:sizee/3)+(sizee/3)*2));

imgR(:,4) = img4((1:sizee/3));
imgG(:,4) = img4(((1:sizee/3)+sizee/3));
imgB(:,4) = img4(((1:sizee/3)+(sizee/3)*2));

subplot(1,3,1);
t1 = imgR(:,1);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgR(:,2);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgR(:,3);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgR(:,4);
scatter(t1((1:200)+200),t1(1:200));
title('RED');


subplot(1,3,2);
t1 = imgG(:,1);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgG(:,2);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgG(:,3);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgG(:,4);
scatter(t1((1:200)+200),t1(1:200));
title('GREEN');

subplot(1,3,3);
t1 = imgB(:,1);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgB(:,2);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgB(:,3);
scatter(t1((1:200)+200),t1(1:200));
hold on;
t1 = imgB(:,4);
scatter(t1((1:200)+200),t1(1:200));
title('BLUE');

legend('Grupo1','Grupo2','Grupo3','Grupo4');

% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


function setGlobalpatrones(val,info)
global patrones
patrones = val;
global informacion
informacion = info;

function [r info] = getGlobalpatrones
global patrones
r = patrones;
global informacion
info = informacion;

function setGlobalpesos(val)
global pesos
pesos = val;

function r = getGlobalpesos
global pesos
r = pesos;

function setGlobalW(w1,b1,w2,b2)
global gw1
gw1 = w1;
global gb1
gb1 = b1;
global gw2
gw2 = w2;
global gb2
gb2 = b2;

function [w1,b1,w2,b2] = getGlobalW
global gw1
w1 = gw1;
global gb1
b1 = gb1;
global gw2
w2 = gw2;
global gb2
b2 = gb2;

function setGlobalWfinal(w1,b1,w2,b2)
global gw1f
gw1f = w1;
global gb1f
gb1f = b1;
global gw2f
gw2f = w2;
global gb2f
gb2f = b2;

function [w1,b1,w2,b2] = getGlobalWfinal
global gw1f
w1 = gw1f;
global gb1f
b1 = gb1f;
global gw2f
w2 = gw2f;
global gb2f
b2 = gb2f;

function setGlobalgraficaPesos(w1,w2,w3)
p(:,1) = w1;
p(:,2) = w2;
p(:,3) = w3;
global pesosGrafica
pesosGrafica = p;

function r = getGlobalgraficaPesos
global pesosGrafica
r = pesosGrafica;

% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3
P = getGlobalpatrones();
fhist = figure;
figure(fhist);
hist(P);


% --- Executes on button press in CBtheta.
function CBtheta_Callback(hObject, eventdata, handles)
% hObject    handle to CBtheta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CBtheta
thetaAut = get(handles.CBtheta, 'Value');
if thetaAut==0
   set(handles.b1,'Enable','on');
   set(handles.b2,'Enable','on');
else
     set(handles.b1,'Enable','off');
     set(handles.b2,'Enable','off');
end


function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b2 as text
%        str2double(get(hObject,'String')) returns contents of b2 as a double


% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CBconservaw.
function CBconservaw_Callback(hObject, eventdata, handles)
% hObject    handle to CBconservaw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CBconservaw


% --- Executes on button press in CBdatosGraficas.



function CBdatosGraficas_Callback(hObject, eventdata, handles)
% hObject    handle to CBdatosGraficas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CBdatosGraficas
a = get(handles.CBdatosGraficas,'Value');
if a == 0
    set(handles.uipanel2,'visible','off');
    set(handles.uipanel3,'visible','on');
else
    set(handles.uipanel2,'visible','on');
    set(handles.uipanel3,'visible','off');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[P inf] = getGlobalpatrones();
f = figure;
figure(f);
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.name);
datosImagenes(:,1) = string(info); 
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.folder);
datosImagenes(:,2) = string(info);
cont =0;
for i=1:length(datosImagenes(:,2))
    if(length(char(datosImagenes(i,2)))>cont)
        cont = length(char(datosImagenes(i,2)));
    end
end
for i=1:length(datosImagenes(:,1))
    if(length(char(datosImagenes(i,1)))>cont)
        cont = length(char(datosImagenes(i,1)));
    end
end
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[P inf] = getGlobalpatrones();
f = figure;
figure(f);
subplot(1,3,1);
szdim = size(P,2);
szdim = szdim/4;
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.name);
datosImagenes(:,1) = string(info); 
info = vertcat(inf.t1,inf.t2,inf.t3,inf.t4);
info = strvcat(info.folder);
%set(handles.Timages,'data',info);
datosImagenes(:,2) = string(info);

gggpp1 = char(datosImagenes(szdim*1,2));
gggww1 = char(datosImagenes(szdim*1,1));
gggpp2 = char(datosImagenes(szdim*2,2));
gggww2 = char(datosImagenes(szdim*2,1));
gggpp3 = char(datosImagenes(szdim*3,2));
gggww3 = char(datosImagenes(szdim*3,1));
gggpp4 = char(datosImagenes(szdim*4,2));
gggww4 = char(datosImagenes(szdim*4,1));

fullFileName1 = fullfile(gggpp1(1:length(gggpp1)-1),gggww1);
fullFileName2 = fullfile(gggpp2(1:length(gggpp2)-2),gggww2);
fullFileName3 = fullfile(gggpp3(1:length(gggpp3)),gggww3);
fullFileName4 = fullfile(gggpp4(1:length(gggpp4)-3),gggww4);

mostrarRGB(fullFileName1,fullFileName2,fullFileName3,fullFileName4);
% img2 = info(:,szdim*2);
% img3 = info(:,szdim*3);
% img4 = info(:,szdim*4); 
% fullFileName = fullfile(files.t1(i).folder, files.t1(i).name);
%         [imgR,imgG,imgB] = imgfiltros(fullFileName);

function mostrarRGB(img,img2,img3,img4)
% for i=1:length(img)


rgbImage = imread(img);rgbImage2 = imread(img2);rgbImage3 = imread(img3);rgbImage4 = imread(img4);

rgbImage = imresize(rgbImage,[200 200]);rgbImage2 = imresize(rgbImage2,[200 200]);rgbImage3 = imresize(rgbImage3,[200 200]);rgbImage4 = imresize(rgbImage4,[200 200]);

allBlack = zeros(size(rgbImage, 1), size(rgbImage, 2), 'uint8');

redChannel = rgbImage(:, :, 1);redChannel2 = rgbImage2(:, :, 1);redChannel3 = rgbImage3(:, :, 1);redChannel4 = rgbImage4(:, :, 1);
greenChannel = rgbImage(:, :, 2);greenChannel2 = rgbImage2(:, :, 2);greenChannel3 = rgbImage3(:, :, 2);greenChannel4 = rgbImage4(:, :, 2);
blueChannel  = rgbImage(:, :, 3);blueChannel2  = rgbImage2(:, :, 3);blueChannel3  = rgbImage3(:, :, 3);blueChannel4  = rgbImage4(:, :, 3);

just_red = cat(3, redChannel, allBlack, allBlack);just_red2 = cat(3, redChannel2, allBlack, allBlack);just_red3 = cat(3, redChannel3, allBlack, allBlack);just_red4 = cat(3, redChannel4, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);just_green2 = cat(3, allBlack, greenChannel2, allBlack);just_green3 = cat(3, allBlack, greenChannel3, allBlack);just_green4 = cat(3, allBlack, greenChannel4, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);just_blue2 = cat(3, allBlack, allBlack, blueChannel2);just_blue3 = cat(3, allBlack, allBlack, blueChannel3);just_blue4 = cat(3, allBlack, allBlack, blueChannel4);

subplot(4, 4, 1);
imshow(rgbImage); 
subplot(4, 4, 2);
imshow(just_red); 
subplot(4, 4, 3);
imshow(just_green);
subplot(4, 4, 4);
imshow(just_blue); 



subplot(4, 4, 5);
imshow(rgbImage2); 
subplot(4, 4, 6);
imshow(just_red2); 
subplot(4, 4, 7);
imshow(just_green2);
subplot(4, 4, 8);
imshow(just_blue2);




subplot(4, 4, 9);
imshow(rgbImage3); 
subplot(4, 4, 10);
imshow(just_red3); 
subplot(4, 4, 11);
imshow(just_green3);
subplot(4, 4, 12);
imshow(just_blue3);



subplot(4, 4, 13);
imshow(rgbImage4); 
subplot(4, 4, 14);
imshow(just_red4); 
subplot(4, 4, 15);
imshow(just_green4);
subplot(4, 4, 16);
imshow(just_blue4);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nmuestras = 5;

[w1,b1,w2,b2] = getGlobalWfinal();
[P inf] = getImagesEvaluacion(nmuestras);
set(handles.Tgrupo1,'String',strvcat(inf.t1.name));
set(handles.Tgrupo2,'String',strvcat(inf.t2.name));
set(handles.Tgrupo3,'String',strvcat(inf.t3.name));
set(handles.Tgrupo4,'String',strvcat(inf.t4.name));

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
s1 = [];
for q = 1:nmuestras
        a1 = tansig(w1*P(:,q) + b1); 
        a2 = tansig(w2*a1 + b2)
        e = T(:,q) - a2;
        erm = (e(1)+e(2))/2;
        aux1 = vertcat(a2,e,erm);
        s1 = vertcat(s1,aux1');
end
set(handles.TBLg1,'data',s1);
s2 = [];
for q = nmuestras+1:nmuestras*2
        a1 = tansig(w1*P(:,q) + b1); 
        a2 = tansig(w2*a1 + b2)
        e = T(:,q) - a2;
        erm = (e(1)+e(2))/2;
        aux1 = vertcat(a2,e,erm);
        s2 = vertcat(s2,aux1');
end
set(handles.TBLg2,'data',s2);

s3 = [];
for q = nmuestras*2+1:nmuestras*3
        a1 = tansig(w1*P(:,q) + b1); 
        a2 = tansig(w2*a1 + b2)
        e = T(:,q) - a2;
        erm = (e(1)+e(2))/2;
        aux1 = vertcat(a2,e,erm);
        s3 = vertcat(s3,aux1');
end
set(handles.TBLg3,'data',s3);


s4 = [];
for q = nmuestras*3+1:nmuestras*4
        a1 = tansig(w1*P(:,q) + b1); 
        a2 = tansig(w2*a1 + b2)
        e = T(:,q) - a2;
        erm = (e(1)+e(2))/2;
        aux1 = vertcat(a2,e,erm);
        s4 = vertcat(s4,aux1');
end
set(handles.TBLg4,'data',s4);

erroCuMEdi = vertcat(s1(:,5),s2(:,5),s3(:,5),s4(:,5));
erroeMedio = sum(abs(erroCuMEdi))/(nmuestras*4);
set(handles.TerrCuadrMed,'String',num2str(erroeMedio));

%TerrCuadrMed
