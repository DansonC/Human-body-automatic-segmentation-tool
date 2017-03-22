function corners=findcorner1(skeleton,height,width)

    head.top=[skeleton(4,1) skeleton(4,2)];
    head.bot=[skeleton(3,1) skeleton(3,2)];
    syms b k
    f1= k*head.top(1)+b==head.top(2);
    f2= k*head.bot(1)+b==head.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
    syms x y
    f3= sqrt(x^2+y^2)==width.head/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.head.p1=[head.top(1)-x head.top(2)-y];
        corners.head.p2=head.top;
        corners.head.p3=[head.top(1)+x head.top(2)+y];
        corners.head.p4=[head.bot(1)+x head.bot(2)+y];
        corners.head.p5=head.bot;
        corners.head.p6=[head.bot(1)-x head.bot(2)-y];

    else
        
        corners.head.p1=[head.top(1)+x head.top(2)-y];
        corners.head.p2=head.top;
        corners.head.p3=[head.top(1)-x head.top(2)+y];
        corners.head.p4=[head.bot(1)+x head.bot(2)-y];
        corners.head.p5=head.bot;
        corners.head.p6=[head.bot(1)-x head.bot(2)+y];
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    body.top=[skeleton(3,1) skeleton(3,2)];
    body.bot=[skeleton(1,1) skeleton(1,2)];
    syms b k
    f1= k*body.top(1)+b==body.top(2);
    f2= k*body.bot(1)+b==body.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
    syms x y
    f3= sqrt(x^2+y^2)==width.body/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.body.p1=[body.top(1)-x body.top(2)-y];
        corners.body.p2=body.top;
        corners.body.p3=[body.top(1)+x body.top(2)+y];
        corners.body.p4=[body.bot(1)+x body.bot(2)+y];
        corners.body.p5=body.bot;
        corners.body.p6=[body.bot(1)-x body.bot(2)-y];

    else
        
        corners.body.p1=[body.top(1)+x body.top(2)-y];
        corners.body.p2=body.top;
        corners.body.p3=[body.top(1)-x body.top(2)+y];
        corners.body.p4=[body.bot(1)+x body.bot(2)-y];
        corners.body.p5=body.bot;
        corners.body.p6=[body.bot(1)-x body.bot(2)+y];
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    lu.top=[skeleton(5,1) skeleton(5,2)];
    lu.bot=[skeleton(6,1) skeleton(6,2)];
    syms b k
    f1= k*lu.top(1)+b==lu.top(2);
    f2= k*lu.bot(1)+b==lu.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
    syms x y
    f3= sqrt(x^2+y^2)==width.lu/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lu.p1=[lu.top(1)-x lu.top(2)-y];
        corners.lu.p2=lu.top;
        corners.lu.p3=[lu.top(1)+x lu.top(2)+y];
        corners.lu.p4=[lu.bot(1)+x lu.bot(2)+y];
        corners.lu.p5=lu.bot;
        corners.lu.p6=[lu.bot(1)-x lu.bot(2)-y];

    else
        
       corners.lu.p1=[lu.top(1)+x lu.top(2)-y];
        corners.lu.p2=lu.top;
        corners.lu.p3=[lu.top(1)-x lu.top(2)+y];
        corners.lu.p4=[lu.bot(1)-x lu.bot(2)+y];
        corners.lu.p5=lu.bot;
        corners.lu.p6=[lu.bot(1)+x lu.bot(2)-y];

    end
    
    
%%%%%%%%%%%%%%%%%%

    
    ll.top=[skeleton(6,1) skeleton(6,2)];
    ll.bot=[skeleton(7,1) skeleton(7,2)];
   syms b k
    f1= k*ll.top(1)+b==ll.top(2);
    f2= k*ll.bot(1)+b==ll.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.ll/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.ll.p1=[ll.top(1)-x ll.top(2)-y];
        corners.ll.p2=ll.top;
        corners.ll.p3=[ll.top(1)+x ll.top(2)+y];
        corners.ll.p4=[ll.bot(1)+x ll.bot(2)+y];
        corners.ll.p5=ll.bot;
        corners.ll.p6=[ll.bot(1)-x ll.bot(2)-y];

    else
        
         corners.ll.p1=[ll.top(1)+x ll.top(2)-y];
        corners.ll.p2=ll.top;
        corners.ll.p3=[ll.top(1)-x ll.top(2)+y];
        corners.ll.p4=[ll.bot(1)-x ll.bot(2)+y];
        corners.ll.p5=ll.bot;
        corners.ll.p6=[ll.bot(1)+x ll.bot(2)-y];

    end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
    lh.top=[skeleton(7,1) skeleton(7,2)];
    lh.bot=[skeleton(22,1) skeleton(22,2)];
   syms b k
    f1= k*lh.top(1)+b==lh.top(2);
    f2= k*lh.bot(1)+b==lh.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.lh/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lh.p1=[lh.top(1)-x lh.top(2)-y];
        corners.lh.p2=lh.top;
        corners.lh.p3=[lh.top(1)+x lh.top(2)+y];
        corners.lh.p4=[lh.bot(1)+x lh.bot(2)+y];
        corners.lh.p5=lh.bot;
        corners.lh.p6=[lh.bot(1)-x lh.bot(2)-y];

    else
        
         corners.lh.p1=[lh.top(1)+x lh.top(2)-y];
        corners.lh.p2=lh.top;
        corners.lh.p3=[lh.top(1)-x lh.top(2)+y];
        corners.lh.p4=[lh.bot(1)-x lh.bot(2)+y];
        corners.lh.p5=lh.bot;
        corners.lh.p6=[lh.bot(1)+x lh.bot(2)-y];

    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%


  
    ru.top=[skeleton(9,1) skeleton(9,2)];
    ru.bot=[skeleton(10,1) skeleton(10,2)];
   syms b k
    f1= k*ru.top(1)+b==ru.top(2);
    f2= k*ru.bot(1)+b==ru.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.ru/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.ru.p1=[ru.top(1)-x ru.top(2)-y];
        corners.ru.p2=ru.top;
        corners.ru.p3=[ru.top(1)+x ru.top(2)+y];
        corners.ru.p4=[ru.bot(1)+x ru.bot(2)+y];
        corners.ru.p5=ru.bot;
        corners.ru.p6=[ru.bot(1)-x ru.bot(2)-y];

    else
        
        corners.ru.p1=[ru.top(1)+x ru.top(2)-y];
        corners.ru.p2=ru.top;
        corners.ru.p3=[ru.top(1)-x ru.top(2)+y];
        corners.ru.p4=[ru.bot(1)-x ru.bot(2)+y];
        corners.ru.p5=ru.bot;
        corners.ru.p6=[ru.bot(1)+x ru.bot(2)-y];

    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    rl.top=[skeleton(10,1) skeleton(10,2)];
    rl.bot=[skeleton(11,1) skeleton(11,2)];
   syms b k
    f1= k*rl.top(1)+b==rl.top(2);
    f2= k*rl.bot(1)+b==rl.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rl/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rl.p1=[rl.top(1)-x rl.top(2)-y];
        corners.rl.p2=rl.top;
        corners.rl.p3=[rl.top(1)+x rl.top(2)+y];
        corners.rl.p4=[rl.bot(1)+x rl.bot(2)+y];
        corners.rl.p5=rl.bot;
        corners.rl.p6=[rl.bot(1)-x rl.bot(2)-y];

    else
        corners.rl.p1=[rl.top(1)+x rl.top(2)-y];
        corners.rl.p2=rl.top;
        corners.rl.p3=[rl.top(1)-x rl.top(2)+y];
        corners.rl.p4=[rl.bot(1)-x rl.bot(2)+y];
        corners.rl.p5=rl.bot;
        corners.rl.p6=[rl.bot(1)+x rl.bot(2)-y];


    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    rh.top=[skeleton(11,1) skeleton(11,2)];
    rh.bot=[skeleton(25,1) skeleton(25,2)];
   syms b k
    f1= k*rh.top(1)+b==rh.top(2);
    f2= k*rh.bot(1)+b==rh.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rh/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
    x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rh.p1=[rh.top(1)-x rh.top(2)-y];
        corners.rh.p2=rh.top;
        corners.rh.p3=[rh.top(1)+x rh.top(2)+y];
        corners.rh.p4=[rh.bot(1)+x rh.bot(2)+y];
        corners.rh.p5=rh.bot;
        corners.rh.p6=[rh.bot(1)-x rh.bot(2)-y];

    else
        corners.rh.p1=[rh.top(1)+x rh.top(2)-y];
        corners.rh.p2=rh.top;
        corners.rh.p3=[rh.top(1)-x rh.top(2)+y];
        corners.rh.p4=[rh.bot(1)-x rh.bot(2)+y];
        corners.rh.p5=rh.bot;
        corners.rh.p6=[rh.bot(1)+x rh.bot(2)-y];


    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    lgu.top=[skeleton(13,1) skeleton(13,2)];
    lgu.bot=[skeleton(14,1) skeleton(14,2)];
   syms b k
    f1= k*lgu.top(1)+b==lgu.top(2);
    f2= k*lgu.bot(1)+b==lgu.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.lgu/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lgu.p1=[lgu.top(1)-x lgu.top(2)-y];
        corners.lgu.p2=lgu.top;
        corners.lgu.p3=[lgu.top(1)+x lgu.top(2)+y];
        corners.lgu.p4=[lgu.bot(1)+x lgu.bot(2)+y];
        corners.lgu.p5=lgu.bot;
        corners.lgu.p6=[lgu.bot(1)-x lgu.bot(2)-y];

    else
        corners.lgu.p1=[lgu.top(1)+x lgu.top(2)-y];
        corners.lgu.p2=lgu.top;
        corners.lgu.p3=[lgu.top(1)-x lgu.top(2)+y];
        corners.lgu.p4=[lgu.bot(1)-x lgu.bot(2)+y];
        corners.lgu.p5=lgu.bot;
        corners.lgu.p6=[lgu.bot(1)+x lgu.bot(2)-y];


    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 rgu.top=[skeleton(17,1) skeleton(17,2)];
    rgu.bot=[skeleton(18,1) skeleton(18,2)];
   syms b k
    f1= k*rgu.top(1)+b==rgu.top(2);
    f2= k*rgu.bot(1)+b==rgu.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rgu/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rgu.p1=[rgu.top(1)-x rgu.top(2)-y];
        corners.rgu.p2=rgu.top;
        corners.rgu.p3=[rgu.top(1)+x rgu.top(2)+y];
        corners.rgu.p4=[rgu.bot(1)+x rgu.bot(2)+y];
        corners.rgu.p5=rgu.bot;
        corners.rgu.p6=[rgu.bot(1)-x rgu.bot(2)-y];

    else
        corners.rgu.p1=[rgu.top(1)+x rgu.top(2)-y];
        corners.rgu.p2=rgu.top;
        corners.rgu.p3=[rgu.top(1)-x rgu.top(2)+y];
        corners.rgu.p4=[rgu.bot(1)-x rgu.bot(2)+y];
        corners.rgu.p5=rgu.bot;
        corners.rgu.p6=[rgu.bot(1)+x rgu.bot(2)-y];


    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 lgl.top=[skeleton(14,1) skeleton(14,2)];
    lgl.bot=[skeleton(20,1) skeleton(20,2)];
   syms b k
    f1= k*lgl.top(1)+b==lgl.top(2);
    f2= k*lgl.bot(1)+b==lgl.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.lgl/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lgl.p1=[lgl.top(1)-x lgl.top(2)-y];
        corners.lgl.p2=lgl.top;
        corners.lgl.p3=[lgl.top(1)+x lgl.top(2)+y];
        corners.lgl.p4=[lgl.bot(1)+x lgl.bot(2)+y];
        corners.lgl.p5=lgl.bot;
        corners.lgl.p6=[lgl.bot(1)-x lgl.bot(2)-y];

    else
        corners.lgl.p1=[lgl.top(1)+x lgl.top(2)-y];
        corners.lgl.p2=lgl.top;
        corners.lgl.p3=[lgl.top(1)-x lgl.top(2)+y];
        corners.lgl.p4=[lgl.bot(1)-x lgl.bot(2)+y];
        corners.lgl.p5=lgl.bot;
        corners.lgl.p6=[lgl.bot(1)+x lgl.bot(2)-y];


    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 lf.top=[skeleton(20,1) skeleton(20,2)];
    lf.bot=[skeleton(15,1) skeleton(15,2)];
   syms b k
    f1= k*lf.top(1)+b==lf.top(2);
    f2= k*lf.bot(1)+b==lf.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.lf/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lf.p1=[lf.top(1)-x lf.top(2)-y];
        corners.lf.p2=lf.top;
        corners.lf.p3=[lf.top(1)+x lf.top(2)+y];
        corners.lf.p4=[lf.bot(1)+x lf.bot(2)+y];
        corners.lf.p5=lf.bot;
        corners.lf.p6=[lf.bot(1)-x lf.bot(2)-y];

    else
        corners.lf.p1=[lf.top(1)+x lf.top(2)-y];
        corners.lf.p2=lf.top;
        corners.lf.p3=[lf.top(1)-x lf.top(2)+y];
        corners.lf.p4=[lf.bot(1)-x lf.bot(2)+y];
        corners.lf.p5=lf.bot;
        corners.lf.p6=[lf.bot(1)+x lf.bot(2)-y];


    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
     rgl.top=[skeleton(18,1) skeleton(18,2)];
    rgl.bot=[skeleton(21,1) skeleton(21,2)];
   syms b k
    f1= k*rgl.top(1)+b==rgl.top(2);
    f2= k*rgl.bot(1)+b==rgl.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rgl/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rgl.p1=[rgl.top(1)-x rgl.top(2)-y];
        corners.rgl.p2=rgl.top;
        corners.rgl.p3=[rgl.top(1)+x rgl.top(2)+y];
        corners.rgl.p4=[rgl.bot(1)+x rgl.bot(2)+y];
        corners.rgl.p5=rgl.bot;
        corners.rgl.p6=[rgl.bot(1)-x rgl.bot(2)-y];

    else
        corners.rgl.p1=[rgl.top(1)+x rgl.top(2)-y];
        corners.rgl.p2=rgl.top;
        corners.rgl.p3=[rgl.top(1)-x rgl.top(2)+y];
        corners.rgl.p4=[rgl.bot(1)-x rgl.bot(2)+y];
        corners.rgl.p5=rgl.bot;
        corners.rgl.p6=[rgl.bot(1)+x rgl.bot(2)-y];


    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     rf.top=[skeleton(21,1) skeleton(21,2)];
    rf.bot=[skeleton(19,1) skeleton(19,2)];
   syms b k
    f1= k*rf.top(1)+b==rf.top(2);
    f2= k*rf.bot(1)+b==rf.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rf/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rf.p1=[rf.top(1)-x rf.top(2)-y];
        corners.rf.p2=rf.top;
        corners.rf.p3=[rf.top(1)+x rf.top(2)+y];
        corners.rf.p4=[rf.bot(1)+x rf.bot(2)+y];
        corners.rf.p5=rf.bot;
        corners.rf.p6=[rf.bot(1)-x rf.bot(2)-y];

    else
        corners.rf.p1=[rf.top(1)+x rf.top(2)-y];
        corners.rf.p2=rf.top;
        corners.rf.p3=[rf.top(1)-x rf.top(2)+y];
        corners.rf.p4=[rf.bot(1)-x rf.bot(2)+y];
        corners.rf.p5=rf.bot;
        corners.rf.p6=[rf.bot(1)+x rf.bot(2)-y];


    end


