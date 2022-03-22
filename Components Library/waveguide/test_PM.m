


        path =  'E:\Codes\Lumerical\Components Library\waveguide\demon\matlab';
    fname = 'waveguide_width 200 ~ 1800 nm 5 nm';
load( [path,'\' , fname ] );

figure('color',[1 1 1]);
lw = 4;   Afs = 24;    fs = 30;
xlab = '������� (nm)';
ylab = '��Ч������';
tit = '220 nm��ȹ貨����Ч�������沨����ȱ仯(@1550 nm)';
plot( widthL*G, neff(:,1) , '*-', 'linewidth',lw );
hold on;
for k = 2:6
    plot( widthL*G, neff(:,k) , '*-', 'linewidth',lw );
end
set(gca,'fontsize',Afs);    % ������������
    ylabel(ylab,'fontsize',fs,'fontweight','bold');        
    xlabel(xlab,'fontsize',fs,'fontweight','bold');
    title(tit,'fontsize',fs,'fontweight','bold');


%% 500*220 nm ���� TM0   �� TM1 �������
%%  TM0-TM1     500-1240
%                450-1149

%     widthSM = 450e-9;
% neffTM0 = interp1(widthL*G ,neff(:,2) ,widthSM*G );
% 
%         widthJ = [1000e-9,1340e-9];
%     f = @(x) interp1(widthL,neff(:,5),x);
% widthTM1 = bizero(f,widthJ,'ref',neffTM0);

%     widthMM = 1600e-9;
% neffTM0 = interp1(widthL*G ,neff(:,6) ,widthMM*G );
% 
%         widthJ = [670e-9,1000e-9];
%     f = @(x) interp1(widthL,neff(:,3),x);
% widthTM0 = bizero(f,widthJ,'ref',neffTM0);


% %% 500*220 nm ���� TE0 ��Ч������      2.44
% f = @(x) interp1(widthL,neff(:,1),x);
%     widthSM = 500e-9;
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
% 
% %%  ˫������ģ��դ���������
%     widthSM = 500e-9;
%     widthMM = 800e-9;
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
% 
%     waCve = 1550;
% pitch = waCve/(neffTE0+neffTE1);       % 1550 ���ζ�Ӧ�Ĺ�դ����
% 
% % ��ģ����-��ģ����    TE0-TE0   г���
% neffMM_TE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% neffSM_TE0 = interp1(widthL*G ,neff(:,1) ,widthSM*G );
%     waCve = pitch*(neffMM_TE0+neffSM_TE0);
% % ��ģ����    TE0-TE0   г���
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
%     waCve = pitch*(2*neffTE0);
% % ��ģ����    TE1-TE0   г���
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
%     waCve = pitch*(neffTE0+neffTE1);
% % ��ģ����    TE1-TE1   г���
% neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
%     waCve = pitch*(2*neffTE1);
% 
% 
% 
% 
% % %% �����ڹ�դ �� width = 700 nm
% % widthMM = 800e-9;
% % widthJ = [265e-9,widthMM];          % ��ģ�����Ŀ������
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitch = waCve/(neffTE0+neffTE1);
% % pitchPG700 = waCve/(neffTE0-neffTE1)      % �����ڹ�դ��width = 800 nm
% % 
% % 
% % 
% % %% �����ڹ�դ  �� width = 800 nm
% % widthMM = 800e-9;
% % widthJ = [265e-9,widthMM];          % ��ģ�����Ŀ������
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitch = waCve/(neffTE0+neffTE1);
% % pitchPG = waCve/(neffTE0-neffTE1)      % �����ڹ�դ��width = 800 nm
% % 
% % 
% % 
% % %% �����ڹ�դ  �� width = 1200 nm
% % widthMM = 1200e-9;
% % widthJ = [265e-9,widthMM];          % ��ģ�����Ŀ������
% % neffTE0 = interp1(widthL*G ,neff(:,1) ,widthMM*G );
% % neffTE2 = interp1(widthL*G ,neff(:,3) ,widthMM*G );
% % 
% %     waCve = 1550;
% % pitchPGB = waCve/((neffTE0-neffTE2))     % �����ڹ�դ,width = 1200 nm
% % 
% % 
% % 
% % %%
% % widthMM = 1200e-9;
% % widthJ = [265e-9,widthMM];          % ��ģ�����Ŀ������
% % neffTE1 = interp1(widthL*G ,neff(:,3) ,widthMM*G );
% %     
% % widthSM = bizero(f,widthJ,'ref',neffTE1);
% 
% 
% 
% 
% 
