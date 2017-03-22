function [fixedBG,dataset]=maskpoly1(corners,im)
 c1=[corners.head.p1(1) corners.head.p2(1) corners.head.p3(1) corners.head.p6(1) corners.head.p5(1) corners.head.p4(1)];
 r1=[corners.head.p1(2) corners.head.p2(2) corners.head.p3(2) corners.head.p6(2) corners.head.p5(2) corners.head.p4(2)];
 c1=round(c1);
 r1=round(r1);
 fixedBG.head = poly2mask(c1,r1,size(im,1),size(im,2));
 j=1;
 total=size(fixedBG.head,1)*size(fixedBG.head,2);
 head=find(fixedBG.head==1);
 len=length(head);
 for j=1:len

         dataset.head(j)=head(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c2=[corners.body.p1(1) corners.body.p2(1) corners.body.p3(1) corners.body.p6(1) corners.body.p5(1) corners.body.p4(1)];
 r2=[corners.body.p1(2) corners.body.p2(2) corners.body.p3(2) corners.body.p6(2) corners.body.p5(2) corners.body.p4(2)];
 c2=round(c2);
 r2=round(r2);
 fixedBG.body = poly2mask(c2,r2,size(im,1),size(im,2));
 body=find(fixedBG.body==1);
 len=length(body);
 for j=1:len

         dataset.body(j)=body(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c3=[corners.lu.p1(1) corners.lu.p2(1) corners.lu.p3(1) corners.lu.p4(1) corners.lu.p5(1) corners.lu.p6(1)];
 r3=[corners.lu.p1(2) corners.lu.p2(2) corners.lu.p3(2) corners.lu.p4(2) corners.lu.p5(2) corners.lu.p6(2)];
 c3=round(c3);
 r3=round(r3);
 fixedBG.lu= poly2mask(c3,r3,size(im,1),size(im,2));
lu=find(fixedBG.lu==1);
 len=length(lu);
 for j=1:len

         dataset.lu(j)=lu(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c4=[corners.ll.p1(1) corners.ll.p2(1) corners.ll.p3(1) corners.ll.p4(1) corners.ll.p5(1) corners.ll.p6(1)];
 r4=[corners.ll.p1(2) corners.ll.p2(2) corners.ll.p3(2) corners.ll.p4(2) corners.ll.p5(2) corners.ll.p6(2)];
 c4=round(c4);
 r4=round(r4);
 fixedBG.ll= poly2mask(c4,r4,size(im,1),size(im,2));
    ll=find(fixedBG.ll==1);
 len=length(ll);
 for j=1:len

         dataset.ll(j)=ll(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c5=[corners.ru.p1(1) corners.ru.p2(1) corners.ru.p3(1) corners.ru.p4(1) corners.ru.p5(1) corners.ru.p6(1)];
 r5=[corners.ru.p1(2) corners.ru.p2(2) corners.ru.p3(2) corners.ru.p4(2) corners.ru.p5(2) corners.ru.p6(2)];
 c5=round(c5);
 r5=round(r5);
 fixedBG.ru= poly2mask(c5,r5,size(im,1),size(im,2));
 ru=find(fixedBG.ru==1);
 len=length(ru);
 for j=1:len

         dataset.ru(j)=ru(j);
       


 end
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c6=[corners.rl.p1(1) corners.rl.p2(1) corners.rl.p3(1) corners.rl.p4(1) corners.rl.p5(1) corners.rl.p6(1)];
 r6=[corners.rl.p1(2) corners.rl.p2(2) corners.rl.p3(2) corners.rl.p4(2) corners.rl.p5(2) corners.rl.p6(2)];
 c6=round(c6);
 r6=round(r6);
 fixedBG.rl= poly2mask(c6,r6,size(im,1),size(im,2));
 rl=find(fixedBG.rl==1);
 len=length(rl);
 for j=1:len

         dataset.rl(j)=rl(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%
 c7=[corners.lh.p1(1) corners.lh.p2(1) corners.lh.p3(1) corners.lh.p4(1) corners.lh.p5(1) corners.lh.p6(1)];
 r7=[corners.lh.p1(2) corners.lh.p2(2) corners.lh.p3(2) corners.lh.p4(2) corners.lh.p5(2) corners.lh.p6(2)];
 c7=round(c7);
 r7=round(r7);
 fixedBG.lh= poly2mask(c7,r7,size(im,1),size(im,2));
  lh=find(fixedBG.lh==1);
 len=length(lh);
 for j=1:len

         dataset.lh(j)=lh(j);
       


 end
 %%%%%%%%%%%%%%
 c8=[corners.rh.p1(1) corners.rh.p2(1) corners.rh.p3(1) corners.rh.p4(1) corners.rh.p5(1) corners.rh.p6(1)];
 r8=[corners.rh.p1(2) corners.rh.p2(2) corners.rh.p3(2) corners.rh.p4(2) corners.rh.p5(2) corners.rh.p6(2)];
 c8=round(c8);
 r8=round(r8);
 fixedBG.rh= poly2mask(c8,r8,size(im,1),size(im,2));
 rh=find(fixedBG.rh==1);
 len=length(rh);
 for j=1:len

         dataset.rh(j)=rh(j);
       


 end
 
 %%%%%%%%%%%%%
 c9=[corners.lgu.p1(1) corners.lgu.p2(1) corners.lgu.p3(1) corners.lgu.p4(1) corners.lgu.p5(1) corners.lgu.p6(1)];
 r9=[corners.lgu.p1(2) corners.lgu.p2(2) corners.lgu.p3(2) corners.lgu.p4(2) corners.lgu.p5(2) corners.lgu.p6(2)];
 c9=round(c9);
 r9=round(r9);
 fixedBG.lgu= poly2mask(c9,r9,size(im,1),size(im,2));
 lgu=find(fixedBG.lgu==1);
 len=length(lgu);
 for j=1:len

         dataset.lgu(j)=lgu(j);
       


 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c10=[corners.rgu.p1(1) corners.rgu.p2(1) corners.rgu.p3(1) corners.rgu.p4(1) corners.rgu.p5(1) corners.rgu.p6(1)];
 r10=[corners.rgu.p1(2) corners.rgu.p2(2) corners.rgu.p3(2) corners.rgu.p4(2) corners.rgu.p5(2) corners.rgu.p6(2)];
 c10=round(c10);
 r10=round(r10);
 fixedBG.rgu= poly2mask(c10,r10,size(im,1),size(im,2));

 rgu=find(fixedBG.rgu==1);
 len=length(rgu);
 for j=1:len

         dataset.rgu(j)=rgu(j);
   
 end
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%
 c11=[corners.lgl.p1(1) corners.lgl.p2(1) corners.lgl.p3(1) corners.lgl.p4(1) corners.lgl.p5(1) corners.lgl.p6(1)];
 r11=[corners.lgl.p1(2) corners.lgl.p2(2) corners.lgl.p3(2) corners.lgl.p4(2) corners.lgl.p5(2) corners.lgl.p6(2)];
 c11=round(c11);
 r11=round(r11);
 fixedBG.lgl= poly2mask(c11,r11,size(im,1),size(im,2));
 lgl=find(fixedBG.lgl==1);
 len=length(lgl);
 for j=1:len

         dataset.lgl(j)=lgl(j);
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%
 c12=[corners.lf.p1(1) corners.lf.p2(1) corners.lf.p3(1) corners.lf.p4(1) corners.lf.p5(1) corners.lf.p6(1)];
 r12=[corners.lf.p1(2) corners.lf.p2(2) corners.lf.p3(2) corners.lf.p4(2) corners.lf.p5(2) corners.lf.p6(2)];
 c12=round(c12);
 r12=round(r12);
 fixedBG.lf= poly2mask(c12,r12,size(im,1),size(im,2));
 lf=find(fixedBG.lf==1);
 len=length(lf);
 for j=1:len

         dataset.lf(j)=lf(j);
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c13=[corners.rgl.p1(1) corners.rgl.p2(1) corners.rgl.p3(1) corners.rgl.p4(1) corners.rgl.p5(1) corners.rgl.p6(1)];
 r13=[corners.rgl.p1(2) corners.rgl.p2(2) corners.rgl.p3(2) corners.rgl.p4(2) corners.rgl.p5(2) corners.rgl.p6(2)];
 c13=round(c13);
 r13=round(r13);
 fixedBG.rgl= poly2mask(c13,r13,size(im,1),size(im,2));
 rgl=find(fixedBG.rgl==1);
 len=length(rgl);
 for j=1:len

         dataset.rgl(j)=rgl(j);
 end
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  c13=[corners.rf.p1(1) corners.rf.p2(1) corners.rf.p3(1) corners.rf.p4(1) corners.rf.p5(1) corners.rf.p6(1)];
 r13=[corners.rf.p1(2) corners.rf.p2(2) corners.rf.p3(2) corners.rf.p4(2) corners.rf.p5(2) corners.rf.p6(2)];
 c13=round(c13);
 r13=round(r13);
 fixedBG.rf= poly2mask(c13,r13,size(im,1),size(im,2));
 rf=find(fixedBG.rf==1);
 len=length(rf);
 for j=1:len

         dataset.rf(j)=rf(j);
 end
       