function [imfinal,labels]=superpixel_paint(dataset,depthim,img)
   %imfinal=imresize(imfinal,[size(depthim,1) size(depthim,2)]);%%%
   % im=imresize(im,[size(depthim,1) size(depthim,2)]);%%%
   % labels=uint8(labels);
  %  labels=imresize(labels,[size(depthim,1) size(depthim,2)]);%%%
    [L,N]=superpixels(depthim,3000);
    imfinal=img;
    idx=label2idx(L);
    flag=zeros(size(idx));
   
    for j=1:length(dataset.head)
        for i=1:N 
        location=find(idx{i}==dataset.head(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),1,imfinal);
                    else
                    end
                end
                flag(i)=1;
            else
                
            end
        
        end
        end
    end
    
     for j=1:length(dataset.body)
        for i=1:N 
        location=find(idx{i}==dataset.body(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),2,imfinal);
                    else
                    end
                end
                flag(i)=2;
            else
                
            end
        
        end
        end
     end
    
      for j=1:length(dataset.lu)
        for i=1:N 
        location=find(idx{i}==dataset.lu(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if   depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),3,imfinal);
                    else
                    end
                end
                flag(i)=3;
            else
                
            end
        
        end
        end
      end
    
      
       for j=1:length(dataset.ll)
        for i=1:N 
        location=find(idx{i}==dataset.ll(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),4,imfinal);
                    else
                    end
                end
                flag(i)=4;
            else
                
            end
        
        end
        end
       end
    
        for j=1:length(dataset.lh)
        for i=1:N 
        location=find(idx{i}==dataset.lh(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),5,imfinal);
                    else
                    end
                end
                flag(i)=5;
            else
                
            end
        
        end
        end
        end
    
         for j=1:length(dataset.ru)
        for i=1:N 
        location=find(idx{i}==dataset.ru(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),6,imfinal);
                    else
                    end
                end
                flag(i)=6;
            else
                
            end
        
        end
        end
         end
    
     for j=1:length(dataset.rl)
        for i=1:N 
        location=find(idx{i}==dataset.rl(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),7,imfinal);
                    else
                    end
                end
                flag(i)=7;
            else
                
            end
        
        end
        end
     end
    
     
      for j=1:length(dataset.rh)
        for i=1:N 
        location=find(idx{i}==dataset.rh(j));
        if isempty(location)
        else
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),8,imfinal);
                    else
                    end
                end
                flag(i)=8;
         
                
          
        
        end
        end
      end
    
       for j=1:length(dataset.lgu)
        for i=1:N 
        location=find(idx{i}==dataset.lgu(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),9,imfinal);
                    else
                    end
                end
                flag(i)=9;
            else
                
            end
        
        end
        end
       end
    
        for j=1:length(dataset.rgu)
        for i=1:N 
        location=find(idx{i}==dataset.rgu(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),10,imfinal);
                    else
                    end
                end
                flag(i)=10;
            else
                
            end
        
        end
        end
        end
    
            for j=1:length(dataset.lgl)
        for i=1:N 
        location=find(idx{i}==dataset.lgl(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),11,imfinal);
                    else
                    end
                end
                flag(i)=11;
            else
                
            end
        
        end
        end
            end
     
       
            
            
                for j=1:length(dataset.lf)
        for i=1:N 
        location=find(idx{i}==dataset.lf(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),12,imfinal);
                    else
                    end
                end
                flag(i)=12;
            else
                
            end
        
        end
        end
                end
       
   
                
                for j=1:length(dataset.rgl)
        for i=1:N 
        location=find(idx{i}==dataset.rgl(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if  depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),13,imfinal);
                    else
                    end
                end
                flag(i)=13;
            else
                
            end
        
        end
        end
                end
             
       
                
                for j=1:length(dataset.rf)
        for i=1:N 
        location=find(idx{i}==dataset.rf(j));
        if isempty(location)
        else
            if flag(i)==0
                for q=1:length(idx{i})
                    if depthim(idx{i}(q))>0
                        imfinal=paintcolor(imfinal,idx{i}(q),14,imfinal);
                    else
                    end
                end
                flag(i)=14;
            else
                
            end
        
        end
        end
                end
       
  labels=1;
                
    
    
        
             
             
             
             
             