function []=Ext(data)             
   A=data;
   a=A(:,1);
   a=table2array(a);
   b=A(:,2);
   b=table2array(b);
   c=A(:,3);
   c=table2array(c);
   d=A(:,4);
    d=table2array(d);
   e=A(:,5);
    e=table2array(e);
   f=A(:,6);
    f=table2array(f);
   g=A(:,7);
    g=table2array(g);
   h=A(:,8);
    h=table2array(h);
   t= 1:5000;
   
   avg1 = mean(a);
   std1 = std(a);
   avg2 = mean(b);
   std2 = std(b);
   avg3 = mean(c);
   std3 = std(c);
   avg4 = mean(d);
   std4 = std(d);
   avg5 = mean(e);
   std5 = std(e);
   avg6 = mean(f);
   std6 = std(f);
   avg7 = mean(g);
   std7 = std(g);
   avg8 = mean(h);
   std8 = std(h);
   
   fprintf('x1 평균 : %f \t x1 표준편차 : %f\n',avg1,std1);
   fprintf('x2 평균 : %f \t x2 표준편차 : %f\n',avg2,std2);
   fprintf('y1 평균 : %f \t y1 표준편차 : %f\n',avg3,std3);
   fprintf('y2 평균 : %f \t y2 표준편차 : %f\n',avg4,std4);
   fprintf('z1 평균 : %f \t z1 표준편차 : %f\n',avg5,std5);
   fprintf('z2 평균 : %f \t z2 표준편차 : %f\n',avg6,std6);
   fprintf('x1-x2 평균 : %f \t x1-x2 표준편차 : %f\n',avg7,std7);
   fprintf('y1-y2 평균 : %f \t y1-y2 표준편차 : %f\n',avg8,std8);
   
   fig1 = figure(1);
   set(fig1, 'OuterPosition',[3. 270,1080,720])
   
  subplot(2,4,1), plot(t,a,'r'); xlabel('x1'); grid on; xlim([0 5000]); ylim([-200 120]);
  subplot(2,4,2), plot(t,b,'r'); xlabel('x2'); grid on; xlim([0 5000]); ylim([-200 150]);
  subplot(2,4,3), plot(t,c); xlabel('y1'); grid on; xlim([0 5000]); ylim([-100 100]);
  subplot(2,4,4), plot(t,d); xlabel('y2'); grid on; xlim([0 5000]); ylim([-100 100]);
  subplot(2,4,5), plot(t,e,'b'); xlabel('z1'); grid on; xlim([0 5000]); ylim([-100 100]);
  subplot(2,4,6), plot(t,f,'b'); xlabel('z2'); grid on; xlim([0 5000]); ylim([-100 100]);
  subplot(2,4,7), plot(t,g,'m'); xlabel('x1-x2'); grid on; xlim([0 5000]); ylim([-300 300]);
  subplot(2,4,8), plot(t,h,'m'); xlabel('y1-y2'); grid on; xlim([0 5000]); ylim([-100 100]);
  