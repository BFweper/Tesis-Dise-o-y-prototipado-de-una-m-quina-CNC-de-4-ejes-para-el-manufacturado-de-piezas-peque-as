clc
clear all
close all

% momento de inercia del rotor:
J= 0.190764151; % Kg.m^2
% constante de fricción viscosa del motor:
B= 0.396912508; % N.m.s
% fuerza electromotriz constante:
Ka= 2.70653716; %V/rad/s
% par motor constante:
Km=Ka; % N.m/A
% resistencia eléctrica:
R= 4.8; %?
% inductancia eléctrica:
L = 1.5e-3;
%Voltaje Leido en los Terminales del motor
Vm = 10.2;

den = [L*J R*J+L*B R*B+Km*Ka];

%Velocidad angular
Gwv = tf(Km,den);

%Corriente
Giv = tf([J B],den);

%Posición
Gwt = tf(Km,conv(den,[1 0]));

% sim('MotorModelo6v.slx')