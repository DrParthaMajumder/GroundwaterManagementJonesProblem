format short
fin=fopen('Jones_Problem.hed','r');
data=fread(fin,'float32');
ccc=length(data);  %% 10844



 m=data(12:2711);
 l=length(m);
   a=m';
   for i=1:60 ;
       for j=1:45 ;
           bt1(i,j)=a(j+(i-1)*45);
       end
   end
       
 m=data(2723:5422);
 l=length(m);
   a=m';
   for i=1:60 ;
       for j=1:45 ;
           bt2(i,j)=a(j+(i-1)*45);
       end
   end
       
 m=data(5134:8133);
 l=length(m);
   a=m';
   for i=1:60 ;
       for j=1:45 ;
           bt3(i,j)=a(j+(i-1)*45);
       end
   end 
   
 m=data(8145:10844);
 l=length(m);
   a=m';
   for i=1:60 ;
       for j=1:45 ;
           bt4(i,j)=a(j+(i-1)*45);
       end
   end  
   
 ht1w1= bt1(8,16); 
 ht1w2= bt1(8,30);
 ht1w3= bt1(21,16);
 ht1w4= bt1(21,30);  
 ht1w5= bt1(35,16); 
 ht1w6= bt1(35,30);
 ht1w7= bt1(49,16);
 ht1w8= bt1(49,30); 
 
 ht1=[ht1w1 ht1w2 ht1w3 ht1w4 ht1w5 ht1w6 ht1w7 ht1w8];
 
 ht2w1= bt2(8,16); 
 ht2w2= bt2(8,30);
 ht2w3= bt2(21,16);
 ht2w4= bt2(21,30);  
 ht2w5= bt2(35,16); 
 ht2w6= bt2(35,30);
 ht2w7= bt2(49,16);
 ht2w8= bt2(49,30); 
 
 ht2=[ht2w1 ht2w2 ht2w3 ht2w4 ht2w5 ht2w6 ht2w7 ht2w8];
 
 ht3w1= bt3(8,16); 
 ht3w2= bt3(8,30);
 ht3w3= bt3(21,16);
 ht3w4= bt3(21,30);  
 ht3w5= bt3(35,16); 
 ht3w6= bt3(35,30);
 ht3w7= bt3(49,16);
 ht3w8= bt3(49,30); 
 ht3=[ht3w1 ht3w2 ht3w3 ht3w4 ht3w5 ht3w6 ht3w7 ht3w8];
 
 ht4w1= bt4(8,16); 
 ht4w2= bt4(8,30);
 ht4w3= bt4(21,16);
 ht4w4= bt4(21,30);  
 ht4w5= bt4(35,16); 
 ht4w6= bt4(35,30);
 ht4w7= bt4(49,16);
 ht4w8= bt4(49,30); 
 ht4=[ht4w1 ht4w2 ht4w3 ht4w4 ht4w5 ht4w6 ht4w7 ht4w8];
 ht=[ht1; ht2; ht3; ht4]
 brk_pt=1;
 
 
 
 
 
%   H_C=b;                                                            % Computed Head for the whole domain
%   Hw1=H_C(16,13);                                                   % Head value at the well location          
%   Hw2=H_C(16,23);
%   Hw3=H_C(16,33);
%   Hw4=H_C(50,13);
%   Hw5=H_C(50,23);
%   Hw6=H_C(50,33);
%   Hw7=H_C(65,13);
%   Hw8=H_C(65,20);
%   Hw9=H_C(65,26);
%   Hw10=H_C(65,33);
%   Head=[Hw1,Hw2,Hw3,Hw4,Hw5,Hw6,Hw7,Hw8,Hw9,Hw10];    
%   break_point=1;
%   fclose(fin);
%   fclose('all');

  
  

% % % fin=fopen('Mckinney_1.hed','r');
% % % data=fread(fin,'float32');
% % % ccc=length(data);
% % % m=data(1623:3222);
% % %   l=length(m);
% % %    a=m';
% % %    for i=1:40 ;
% % %        for j=1:40 ;
% % %            b(i,j)=a((j-1)+1+(i-1)*40);
% % %        end
% % %        end
% % %     h22=b;
% % % %    a1=h22(22,8)
% % % %    a2=h22(26,21)
% % % %    a3=h22(23,32)
% % % fclose(fin);
% % % fclose('all');