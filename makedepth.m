function imfinal=makedepth(skeleton,depthim,img)
[height,width,factor]=findcenterpoint1(skeleton);
 corners=findcorner1(skeleton,height,width);
  [fixedBG,dataset]=maskpoly1(corners,depthim);
  [imfinal,labels]=superpixel_paint(dataset,depthim,img);