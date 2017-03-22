function imfinal=cleancolor(imfinal2,idx,im)
        imfinal=imfinal2;
        redIdx=idx;
        greenIdx=idx+size(im,1)*size(im,2);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%need to be modified
        blueIdx= idx+size(im,1)*size(im,2)*2;%
        
          
    imfinal(redIdx)=im(redIdx);%%head
    imfinal(greenIdx)=im(greenIdx);
    imfinal(blueIdx)=im(blueIdx); 