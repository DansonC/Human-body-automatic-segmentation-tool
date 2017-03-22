function imfinal=paintcolor(imfinal,idx,value,im)
     imfinal=imfinal;
     redIdx=idx;
     greenIdx=idx+size(im,1)*size(im,2);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%need to be modified
     blueIdx= idx+size(im,1)*size(im,2)*2;%%%%%%%
     if value==1;
     
    imfinal(redIdx)=255;%%head
    imfinal(greenIdx)=0;
    imfinal(blueIdx)=0; 
     elseif value==2;
     
    imfinal(redIdx)=0;%%%%body
    imfinal(greenIdx)=0;
    imfinal(blueIdx)=255; 
     elseif value==3;
     
    imfinal(redIdx)=0;%%%%lu
    imfinal(greenIdx)=255;
    imfinal(blueIdx)=0; 
     elseif value==4;%%%%ll
     
    imfinal(redIdx)=255;%%%%%
    imfinal(greenIdx)=255;
    imfinal(blueIdx)=0; 
    
     elseif value==5;%%%%lh
     
    imfinal(redIdx)=125;
    imfinal(greenIdx)=0;
    imfinal(blueIdx)=125; 
    
     elseif value==6%%%%ru
     
    imfinal(redIdx)=255;
    imfinal(greenIdx)=0;
    imfinal(blueIdx)=255; 
    
     elseif value==7%%%%rl
     
    imfinal(redIdx)=0;
    imfinal(greenIdx)=255;
    imfinal(blueIdx)=255; 
    
      elseif value==8%%%%rh
     
    imfinal(redIdx)=0;
    imfinal(greenIdx)=125;
    imfinal(blueIdx)=200; 
    
      elseif value==9%%%%lh
     
    imfinal(redIdx)=120;
    imfinal(greenIdx)=120;
    imfinal(blueIdx)=120; 
     elseif value==10
    imfinal(redIdx)=10;
    imfinal(greenIdx)=200;
    imfinal(blueIdx)=255; 
     elseif value==11
    imfinal(redIdx)=130;
    imfinal(greenIdx)=210;
    imfinal(blueIdx)=10; 
     elseif value==12
    imfinal(redIdx)=110;
    imfinal(greenIdx)=10;
    imfinal(blueIdx)=115; 
     elseif value==13
    imfinal(redIdx)=120;
    imfinal(greenIdx)=2;
    imfinal(blueIdx)=88; 
     else
    imfinal(redIdx)=14;
    imfinal(greenIdx)=30;
    imfinal(blueIdx)=200; 
     end
   
    
    