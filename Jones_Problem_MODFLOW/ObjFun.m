function F=ObjFun(Q)
 tic
 format long g
 
 Q_D1=-130000;
 Q_D2=-145000;
 Q_D3=-150000;
 Q_D4=-130000;
 %%
 penlt_D=10000;
 %%
 


% Q=     [-29476      -29458      -18600      -20597      -10764      -12801      -2452      -5833
%         -29919      -29721      -25125      -19792      -11482      -13757      -7865      -7399
%         -29795      -29599      -24188      -27917      -12160      -12947      -3299      -10096
%         -29876      -29976      -20200     -22185      -10902      -10506      -160     -6196];
  
 aaa= H5F.open ('Jones_Problem.h5','H5F_ACC_RDWR','H5P_DEFAULT');
 bbb=H5D.open (aaa, '/Well/07. Property');
 ccc=H5D.read(bbb,'H5T_IEEE_F64LE','H5S_ALL','H5S_ALL','H5P_DEFAULT')
 
 ccc(:,1,1)=Q(:,1);
 ccc(:,2,1)=Q(:,2);
 ccc(:,3,1)=Q(:,3);
 ccc(:,4,1)=Q(:,4); 
 ccc(:,5,1)=Q(:,5);
 ccc(:,6,1)=Q(:,6);
 ccc(:,7,1)=Q(:,7);
 ccc(:,8,1)=Q(:,8);
 
 H5D.write (bbb,'H5ML_DEFAULT','H5S_ALL','H5S_ALL','H5P_DEFAULT', ccc);
 H5F.close (aaa);
 H5D.close (bbb); 
 !mf2k_h5 Jones_Problem.mfs ;                                            %% Execute MODFLOW  
 headfile;
 ht=ht;
 
 for jj=1:1:4
     for ii=1:1:8
         Term(ii)=Q(jj,ii)*(150-ht(jj,ii));
     end
     Term_F(jj)=-sum(Term);
 end
   Q_net1=sum(Q(1,:));
   Q_net2=sum(Q(2,:));
   Q_net3=sum(Q(3,:));
   Q_net4=sum(Q(4,:));
   
     if Q_net1<=Q_D1
     term_D1=0; 
     else
     term_D1=Q_net1-Q_D1;
     end 
     term_D1=penlt_D*(term_D1);

    if Q_net2<=Q_D2
     term_D2=0; 
     else
     term_D2=Q_net2-Q_D2;
     end 
     term_D2=penlt_D*(term_D2);
 
  
     if Q_net3<=Q_D3
     term_D3=0; 
     else
     term_D3=Q_net3-Q_D3;
     end 
     term_D3=penlt_D*(term_D3);
     
     if Q_net4<=Q_D4
     term_D4=0; 
     else
     term_D4=Q_net4-Q_D4;
     end 
     term_D4=penlt_D*(term_D4);
     
     
     
     
 
 F=sum(Term_F)-term_D1-term_D2-term_D3-term_D4;
 break_point=1;
end
