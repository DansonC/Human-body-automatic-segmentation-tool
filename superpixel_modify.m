function [imfinal2,labels]=superpixel_modify(imfinal,im,labels,depthim)
   %imfinal=imresize(imfinal,[size(depthim,1) size(depthim,2)]);%%%
   % im=imresize(im,[size(depthim,1) size(depthim,2)]);%%%
   % labels=uint8(labels);
  %  labels=imresize(labels,[size(depthim,1) size(depthim,2)]);%%%
    [L,N]=superpixels(im,1500);
    imfinal2=imfinal;
    idx=label2idx(L);
    flag=zeros(size(idx));
    label_tem=find(labels~=0 &labels~=1);
 
    
label_body=find(labels==1);
    for i=1:length(label_body)
         index_body=label_body(i);
        for p=1:N
            location_body=find([idx{p}]==index_body);
               if isempty(location_body)
              
               else 
                    if flag(p)==0
                         for m=1:size(idx{p})
                             if depthim(idx{p}(m)) ~=0 && labels(idx{p}(m))==0
                             labels(idx{p}(m))=1;
                               imfinal2=paintcolor(imfinal2,idx{p}(m),1,im);
                             elseif depthim(idx{p}(m))==0 && labels(idx{p}(m))~=0
                             labels(idx{p}(m))=0;
                              imfinal2=cleancolor(imfinal2,idx{p}(m),im);
                        else
                         end
                         end
                      flag(p)=1;
                    else
               end
        end
        end
    end
 %}                         
   
    for i=1:length(label_tem)
         index=label_tem(i);
         value=labels(index);
         for j=1:N
             location=find([idx{j}]==index);%%%%index indicates the pixel position with color
              if isempty(location)
              
              else 
                  if flag(j)==0
                      for q=1:size(idx{j})
                          if depthim(idx{j}(q)) ~=0 && labels(idx{j}(q))==0
                              labels(idx{j}(q))=value;
                              imfinal2=paintcolor(imfinal2,idx{j}(q),value,im);
                          elseif depthim(idx{j}(q))==0 && labels(idx{j}(q))~=0
                              labels(idx{j}(q))=0;
                              imfinal2=cleancolor(imfinal2,idx{j}(q),im);
                          else
                              
                          end
                      end
                      flag(j)=value;
                  
                  else
                  end
              end
         end
    end
                  
                  
                  
                  
           %    if flag(j)~=0 && flag(j)~=value
              %  if flag(j)==2
             % labels(idx{j})=value;
            %  flag(j)==value;
             % imfinal2=paintcolor(N,idx{j},value,im,imfinal2);
              %  if flag(j)==4 && value==5
              %labels(idx{j})=value;
              %%flag(j)==value;
              %imfinal2=paintcolor(N,idx{j},value,im,imfinal2);
               % elseif flag(j)==7 && value==8
              %labels(idx{j})=value;
              %flag(j)==value;
              %imfinal2=paintcolor(N,idx{j},value,im,imfinal2);
               % else
                %end
               %elseif flag~=0 & flag(j)==value
               %else
              %labels(idx{j})=value;
              %flag(j)=value;
              %imfinal2=paintcolor(N,idx{j},value,im,imfinal2);
              %    end%}
             %  end
        % end
    %end
    d=1213123123;
    
    
    
        
             
             
             
             
             