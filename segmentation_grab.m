function [imfinal,L,labels]=segmentation_grab(im,fixedBG)
 Beta=0.5;
 k=5;
 G = 50; 
 maxIter = 10; 
 diffThreshold = 0.001;
 imd = double(im);
 labels=zeros(size(im,1),size(im,2));
 imfinal=im;
 %%%%%%%%%%%%%%%%%%%
 L.body = GCAlgo_2(imd, fixedBG.body,k,G,maxIter, Beta, diffThreshold);
 L.body = double(1 - L.body);
 cur.body = imd.*repmat(L.body , [1 1 3]);
 cur.body=uint8(cur.body);
 pixelfindvector.body=find(rgb2gray(cur.body)~=0);
 b=[round(pixelfindvector.body(:)/size(im,1))+1 mod(pixelfindvector.body(:),size(im,1))];
 
 for i=1:length(pixelfindvector.body)
 if labels(b(i,2),b(i,1),1)~=0
 else
    labels(b(i,2),b(i,1),1)=2;
    
 imfinal(b(i,2),b(i,1),1)=0;
 imfinal(b(i,2),b(i,1),2)=0;
 imfinal(b(i,2),b(i,1),3)=255;
 end
 end
 %%%%%%%%%%%%%
 L.head = GCAlgo_2(imd, fixedBG.head,k,G,maxIter, Beta, diffThreshold);
 L.head = double(1 - L.head);
 cur.head = imd.*repmat(L.head , [1 1 3]);
 cur.head=uint8(cur.head);
 pixelfindvector.head=find(rgb2gray(cur.head)~=0);
 b=[round(pixelfindvector.head(:)/size(im,1))+1 mod(pixelfindvector.head(:),size(im,1))];
 for i=1:length(pixelfindvector.head)
 labels(b(i,2),b(i,1),1)=1;
 imfinal(b(i,2),b(i,1),1)=255;
 imfinal(b(i,2),b(i,1),2)=0;
 imfinal(b(i,2),b(i,1),3)=0;
 end
 %%%%%%%%%
 
 %%%%%%%%%%%%%%55
 L.lu = GCAlgo_2(imd, fixedBG.lu,k,G,maxIter, Beta, diffThreshold);
 L.lu = double(1 - L.lu);
 cur.lu = imd.*repmat(L.lu , [1 1 3]);
 cur.lu=uint8(cur.lu);
 pixelfindvector.lu=find(rgb2gray(cur.lu)~=0);
 b=[round(pixelfindvector.lu(:)/size(im,1))+1 mod(pixelfindvector.lu(:),size(im,1))];
 
 for i=1:length(pixelfindvector.lu)
 labels(b(i,2),b(i,1),1)=3;
 imfinal(b(i,2),b(i,1),1)=0;
 imfinal(b(i,2),b(i,1),2)=255;
 imfinal(b(i,2),b(i,1),3)=0;
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 L.ll = GCAlgo_2(imd, fixedBG.ll,k,G,maxIter, Beta, diffThreshold);
 L.ll = double(1 - L.ll);
 cur.ll = imd.*repmat(L.ll , [1 1 3]);
 cur.ll=uint8(cur.ll);
 pixelfindvector.ll=find(rgb2gray(cur.ll)~=0);
 b=[round(pixelfindvector.ll(:)/size(im,1))+1 mod(pixelfindvector.ll(:),size(im,1))];
 
 for i=1:length(pixelfindvector.ll)
  labels(b(i,2),b(i,1),1)=4;
 imfinal(b(i,2),b(i,1),1)=255;
 imfinal(b(i,2),b(i,1),2)=255;
 imfinal(b(i,2),b(i,1),3)=0;
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 L.lh = GCAlgo_2(imd, fixedBG.lh,k,G,maxIter, Beta, diffThreshold);
 L.lh = double(1 - L.lh);
 cur.lh = imd.*repmat(L.lh , [1 1 3]);
 cur.lh=uint8(cur.lh);
 pixelfindvector.lh=find(rgb2gray(cur.lh)~=0);
 b=[round(pixelfindvector.lh(:)/size(im,1))+1 mod(pixelfindvector.lh(:),size(im,1))];
 
 for i=1:length(pixelfindvector.lh)
  labels(b(i,2),b(i,1),1)=5;
 imfinal(b(i,2),b(i,1),1)=125;
 imfinal(b(i,2),b(i,1),2)=0;
 imfinal(b(i,2),b(i,1),3)=125;
 end
 
 %%%%%%%%%%%%%%%%%%%%%%%55
 L.ru = GCAlgo_2(imd, fixedBG.ru,k,G,maxIter, Beta, diffThreshold);
 L.ru = double(1 - L.ru);
 cur.ru = imd.*repmat(L.ru , [1 1 3]);
 cur.ru=uint8(cur.ru);
 pixelfindvector.ru=find(rgb2gray(cur.ru)~=0);
 b=[round(pixelfindvector.ru(:)/size(im,1))+1 mod(pixelfindvector.ru(:),size(im,1))];
 
 for i=1:length(pixelfindvector.ru)
 labels(b(i,2),b(i,1),1)=6;
 imfinal(b(i,2),b(i,1),1)=255;
 imfinal(b(i,2),b(i,1),2)=0;
 imfinal(b(i,2),b(i,1),3)=255;
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 L.rl = GCAlgo_2(imd, fixedBG.rl,k,G,maxIter, Beta, diffThreshold);
 L.rl = double(1 - L.rl);
 cur.rl = imd.*repmat(L.rl , [1 1 3]);
 cur.rl=uint8(cur.rl);
 pixelfindvector.rl=find(rgb2gray(cur.rl)~=0);
 b=[round(pixelfindvector.rl(:)/size(im,1))+1 mod(pixelfindvector.rl(:),size(im,1))];
 
 for i=1:length(pixelfindvector.rl)
 labels(b(i,2),b(i,1),1)=7;
 imfinal(b(i,2),b(i,1),1)=0;
 imfinal(b(i,2),b(i,1),2)=255;
 imfinal(b(i,2),b(i,1),3)=255;
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%
  L.rh = GCAlgo_2(imd, fixedBG.rh,k,G,maxIter, Beta, diffThreshold);
 L.rh = double(1 - L.rh);
 cur.rh = imd.*repmat(L.rh , [1 1 3]);
 cur.rh=uint8(cur.rh);
 pixelfindvector.rh=find(rgb2gray(cur.rh)~=0);
 b=[round(pixelfindvector.rh(:)/size(im,1))+1 mod(pixelfindvector.rh(:),size(im,1))];
 
 for i=1:length(pixelfindvector.rh)
 labels(b(i,2),b(i,1),1)=8;
 imfinal(b(i,2),b(i,1),1)=0;
 imfinal(b(i,2),b(i,1),2)=125;
 imfinal(b(i,2),b(i,1),3)=200;
 end
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 
  %%%%%%%%%%%%%%%%%%%%%%%%%%
  
  
  
  
  
  
  
  
  
 L.lg = GCAlgo_2(imd, fixedBG.lg,k,G,maxIter, Beta, diffThreshold);
 L.lg = double(1 - L.lg);
 cur.lg = imd.*repmat(L.lg , [1 1 3]);
 cur.lg=uint8(cur.lg);
 pixelfindvector.lg=find(rgb2gray(cur.lg)~=0);
 b=[round(pixelfindvector.lg(:)/size(im,1))+1 mod(pixelfindvector.lg(:),size(im,1))];
 
 for i=1:length(pixelfindvector.lg)
 labels(b(i,2),b(i,1),1)=9;
 imfinal(b(i,2),b(i,1),1)=120;
 imfinal(b(i,2),b(i,1),2)=120;
 imfinal(b(i,2),b(i,1),3)=120;
 end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 L.rg = GCAlgo_2(imd, fixedBG.rg,k,G,maxIter, Beta, diffThreshold);
 L.rg = double(1 - L.rg);
 cur.rg = imd.*repmat(L.rg , [1 1 3]);
 cur.rg=uint8(cur.rg);
 pixelfindvector.rg=find(rgb2gray(cur.rg)~=0);
 b=[round(pixelfindvector.rg(:)/size(im,1))+1 mod(pixelfindvector.rg(:),size(im,1))];
 
 for i=1:length(pixelfindvector.rg)
 labels(b(i,2),b(i,1),1)=10;
 imfinal(b(i,2),b(i,1),1)=10;
 imfinal(b(i,2),b(i,1),2)=200;
 imfinal(b(i,2),b(i,1),3)=255;
 end
 a=32;
 