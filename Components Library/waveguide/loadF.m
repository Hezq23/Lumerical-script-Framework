clc;clear;
% close all;
%% ��ȡ������ɨ��������ļ�������ͼ
K = 1e3;
M = 1e6;
G = 1e9;
MM = M*M;

spa  = 'E:\Codes\Lumerical\Components Library\waveguide\demon\matlab';
pfolder = '';

path = [ spa , pfolder ];
fileInfo = dir( path );
%% ��ͼ
kD = 2;