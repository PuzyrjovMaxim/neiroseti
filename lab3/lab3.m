% ���-�� �����
L = 200;
% ��������� �������� ��������� X
X=-5:(10/L):5; 
% ������ ����� �������, ����������� �������� �����
Noise=0.5*rand(1,(L+1))*2-1.0; 
Y=func(X)+Noise;

hold on; 
% ������������� ��������� �������
plot(X,Y,'LineStyle','none','Marker','.','MarkerSize',5); 
% ������� ���
Net = feedforwardnet(10,'traingdx'); 
% ������� ���
Net=train(Net,X,Y); 
% ��������� ��� �� ��������� ����, ��� ��������� �������
X_rez=-10:0.1:10; 
Y_rez = sim(Net, X_rez); 
% ������������� ���������� �������������
plot(X_rez,Y_rez,'LineStyle','none','Marker','.','MarkerSize',15); 
hold off;