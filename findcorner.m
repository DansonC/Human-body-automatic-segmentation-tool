function corners=findcorner(skeleton,height,width)

    head.top=[skeleton(4,1) skeleton(4,2)*0.9];
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
    lg.top=[skeleton(13,1) skeleton(13,2)];
    lg.bot=[skeleton(15,1) skeleton(15,2)];
   syms b k
    f1= k*lg.top(1)+b==lg.top(2);
    f2= k*lg.bot(1)+b==lg.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.lg/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.lg.p1=[lg.top(1)-x lg.top(2)-y];
        corners.lg.p2=lg.top;
        corners.lg.p3=[lg.top(1)+x lg.top(2)+y];
        corners.lg.p4=[lg.bot(1)+x lg.bot(2)+y];
        corners.lg.p5=lg.bot;
        corners.lg.p6=[lg.bot(1)-x lg.bot(2)-y];

    else
        corners.lg.p1=[lg.top(1)+x lg.top(2)-y];
        corners.lg.p2=lg.top;
        corners.lg.p3=[lg.top(1)-x lg.top(2)+y];
        corners.lg.p4=[lg.bot(1)-x lg.bot(2)+y];
        corners.lg.p5=lg.bot;
        corners.lg.p6=[lg.bot(1)+x lg.bot(2)-y];


    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 rg.top=[skeleton(17,1) skeleton(17,2)];
    rg.bot=[skeleton(19,1) skeleton(19,2)];
   syms b k
    f1= k*rg.top(1)+b==rg.top(2);
    f2= k*rg.bot(1)+b==rg.bot(2);
    [k,b]=solve([f1,f2],[k,b]);
    k=double(k);
    k_inverse=double(-1/k);
     syms x y
    f3= sqrt(x^2+y^2)==width.rg/2;
    f4= y/x==k_inverse;
    [x,y]=solve([f3,f4],[x,y]);
     x=abs(double(x(1)));
    y=abs(double(y(1)));
    if k_inverse>=0
        corners.rg.p1=[rg.top(1)-x rg.top(2)-y];
        corners.rg.p2=rg.top;
        corners.rg.p3=[rg.top(1)+x rg.top(2)+y];
        corners.rg.p4=[rg.bot(1)+x rg.bot(2)+y];
        corners.rg.p5=rg.bot;
        corners.rg.p6=[rg.bot(1)-x rg.bot(2)-y];

    else
        corners.rg.p1=[rg.top(1)+x rg.top(2)-y];
        corners.rg.p2=rg.top;
        corners.rg.p3=[rg.top(1)-x rg.top(2)+y];
        corners.rg.p4=[rg.bot(1)-x rg.bot(2)+y];
        corners.rg.p5=rg.bot;
        corners.rg.p6=[rg.bot(1)+x rg.bot(2)-y];


    end

