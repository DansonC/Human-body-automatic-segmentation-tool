function fixedBG=maskpoly(corners,im)
 c1=[corners.head.p1(1) corners.head.p2(1) corners.head.p3(1) corners.head.p4(1) corners.head.p5(1) corners.head.p6(1)];
 r1=[corners.head.p1(2) corners.head.p2(2) corners.head.p3(2) corners.head.p4(2) corners.head.p5(2) corners.head.p6(2)];
 c1=round(c1);
 r1=round(r1);
 fixedBG.head = ~poly2mask(c1,r1,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c2=[corners.body.p1(1) corners.body.p2(1) corners.body.p3(1) corners.body.p6(1) corners.body.p5(1) corners.body.p4(1)];
 r2=[corners.body.p1(2) corners.body.p2(2) corners.body.p3(2) corners.body.p6(2) corners.body.p5(2) corners.body.p4(2)];
 c2=round(c2);
 r2=round(r2);
 fixedBG.body = ~poly2mask(c2,r2,size(im,1),size(im,2));
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c3=[corners.lu.p1(1) corners.lu.p2(1) corners.lu.p3(1) corners.lu.p4(1) corners.lu.p5(1) corners.lu.p6(1)];
 r3=[corners.lu.p1(2) corners.lu.p2(2) corners.lu.p3(2) corners.lu.p4(2) corners.lu.p5(2) corners.lu.p6(2)];
 c3=round(c3);
 r3=round(r3);
 fixedBG.lu= ~poly2mask(c3,r3,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c4=[corners.ll.p1(1) corners.ll.p2(1) corners.ll.p3(1) corners.ll.p4(1) corners.ll.p5(1) corners.ll.p6(1)];
 r4=[corners.ll.p1(2) corners.ll.p2(2) corners.ll.p3(2) corners.ll.p4(2) corners.ll.p5(2) corners.ll.p6(2)];
 c4=round(c4);
 r4=round(r4);
 fixedBG.ll= ~poly2mask(c4,r4,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c5=[corners.ru.p1(1) corners.ru.p2(1) corners.ru.p3(1) corners.ru.p4(1) corners.ru.p5(1) corners.ru.p6(1)];
 r5=[corners.ru.p1(2) corners.ru.p2(2) corners.ru.p3(2) corners.ru.p4(2) corners.ru.p5(2) corners.ru.p6(2)];
 c5=round(c5);
 r5=round(r5);
 fixedBG.ru= ~poly2mask(c5,r5,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c6=[corners.rl.p1(1) corners.rl.p2(1) corners.rl.p3(1) corners.rl.p4(1) corners.rl.p5(1) corners.rl.p6(1)];
 r6=[corners.rl.p1(2) corners.rl.p2(2) corners.rl.p3(2) corners.rl.p4(2) corners.rl.p5(2) corners.rl.p6(2)];
 c6=round(c6);
 r6=round(r6);
 fixedBG.rl= ~poly2mask(c6,r6,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%
 c7=[corners.lh.p1(1) corners.lh.p2(1) corners.lh.p3(1) corners.lh.p4(1) corners.lh.p5(1) corners.lh.p6(1)];
 r7=[corners.lh.p1(2) corners.lh.p2(2) corners.lh.p3(2) corners.lh.p4(2) corners.lh.p5(2) corners.lh.p6(2)];
 c7=round(c7);
 r7=round(r7);
 fixedBG.lh= ~poly2mask(c7,r7,size(im,1),size(im,2));
 %%%%%%%%%%%%%%
 c8=[corners.rh.p1(1) corners.rh.p2(1) corners.rh.p3(1) corners.rh.p4(1) corners.rh.p5(1) corners.rh.p6(1)];
 r8=[corners.rh.p1(2) corners.rh.p2(2) corners.rh.p3(2) corners.rh.p4(2) corners.rh.p5(2) corners.rh.p6(2)];
 c8=round(c8);
 r8=round(r8);
 fixedBG.rh= ~poly2mask(c8,r8,size(im,1),size(im,2));
 %%%%%%%%%%%%%
 c9=[corners.lg.p1(1) corners.lg.p2(1) corners.lg.p3(1) corners.lg.p4(1) corners.lg.p5(1) corners.lg.p6(1)];
 r9=[corners.lg.p1(2) corners.lg.p2(2) corners.lg.p3(2) corners.lg.p4(2) corners.lg.p5(2) corners.lg.p6(2)];
 c9=round(c9);
 r9=round(r9);
 fixedBG.lg= ~poly2mask(c9,r9,size(im,1),size(im,2));
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 c9=[corners.rg.p1(1) corners.rg.p2(1) corners.rg.p3(1) corners.rg.p4(1) corners.rg.p5(1) corners.rg.p6(1)];
 r9=[corners.rg.p1(2) corners.rg.p2(2) corners.rg.p3(2) corners.rg.p4(2) corners.rg.p5(2) corners.rg.p6(2)];
 c9=round(c9);
 r9=round(r9);
 fixedBG.rg= ~poly2mask(c9,r9,size(im,1),size(im,2));