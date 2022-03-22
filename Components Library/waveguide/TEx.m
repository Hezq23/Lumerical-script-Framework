function neffB = TEx(width,varargin)
%% ���ɨ�� Silicon  neff
%     A:
%     C:
%     G:
%% parse
par = inputParser;
fn = @(x) isnumeric(x);
%% �̶�����
%% �ɱ����
paramName = 'modeI';                      % ģʽ����
default = 1;                                        
par.addOptional(paramName,default,fn);
%% ��-ֵ�Բ���
paramName = 'draw_opt';                   % �Ƿ�ͼ    0  ��  ����
default = 0;                                          % 1  ��  ��
par.addParameter(paramName,default,fn);
%% parse
par.parse( varargin{:} );
modeI = par.Results.modeI;
draw_opt = par.Results.draw_opt;

%% ���� SB lumerical �ķ���
        path =  'E:\Codes\Lumerical\Components Library\waveguide\demon\matlab';
    fname = 'waveguide_width 200 ~ 1800 nm 5 nm';
load( [path,'\' , fname ] );
if ( draw_opt>0 )
    figure
    hold on;
    plot( widthL*G , neff , 'Marker' , '*' );
    axis tight;
end

neffB = interp1(widthL*G , neff(:,modeI) , width*G );   % ���  ָ��������ȵ� ��ģʽneff.



% ��neff vs width ��ֵ
widthMM = 1000e-9;
widthJ = [265e-9,widthMM];          % ��ģ�����Ŀ������
neffTE1 = interp1(widthL*G ,neff(:,2) ,widthMM*G );

    f = @(x) interp1(widthL,neff(:,1),x);
widthSM = bizero(f,widthJ,'ref',neffTE1);

%% ���� TE0-TE0 �� pitch
% width450  = 450e-9;
% neffTE0 = interp1( widthL*G,neff(:,1),width450*G );
% pitchH = 1550/(2*neffTE0);

%% ���� TE1-TE0 ��  pitch
% width = 840e-9;
% neffTE0 = interp1( widthL,neff(:,1),width )
% neffTE1 = interp1( widthL,neff(:,2),width )
% pitchH = 1550/sum([neffTE0,neffTE1])
% wave = 310 * sum([neffTE0,neffTE1])




%% ����һ��plot
% for k = 3 : (length(fileInfo) - kD)/10
%     fname = fileInfo(k).name;
%     load( [path,'\',fname] );
%     plot(wave * G,10*log10(abs(po11)));
%     axis tight;
% end

%% ��ȡָ��·���µ������ļ�������ͼ

% dim  = 3;
% dimSqu = dim * dim;
% for k = 3 : length(fileInfo)
%     fname = fileInfo(k).name;
%     index  = k - kD;
%     index = floor((index-1)/(length(fileInfo) - kD)*6) + 1;
%     subplot(dim , dim , index );
%     hold on;
%     load(fname, 'po11' , 'po21' , 'wave');
%     plot(wave * G,10*log10(po21));
% %     plot(wave * G,10*log10(abs(po11)));
% %     legend({[fname,'T'],[fname , 'R']},'Interpreter','none');
%     axis tight;
% end
return



