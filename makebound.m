function [cur,L,imd,imfinal,imfinal2]=makebound(skeleton,im,depthim)
%center=(top+bottom)/2;
 %depthim_new=imresize(depth im,[size(im,1) size(im,2)]);
 depthim=imresize(depthim,[size(im,1),size(im,2)]);
 [height,width,factor]=findcenterpoint(skeleton);
 corners=findcorner(skeleton,height,width);
 fixedBG=maskpoly(corners,im)
  [imfinal,L,labels]=segmentation_grab(im,fixedBG);
 
 [imfinal2,labels]=superpixel_modify(imfinal,im,labels,depthim);
 uisave({'labels'});
imwrite(imfinal,'C:\NU\CV Project\Kinect\Segment\segment_60.png');
imwrite(imfinal2,'C:\NU\CV Project\Kinect\Segment\segment_final60.png');
 
 
 