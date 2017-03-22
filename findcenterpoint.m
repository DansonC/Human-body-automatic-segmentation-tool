function [height,width,factor]=findcenterpoint(skeleton)

height.head=pdist([skeleton(4,1),skeleton(4,2);skeleton(3,1),skeleton(3,2)],'euclidean')*0.9;
height.body=pdist([skeleton(3,1),skeleton(3,2);skeleton(1,1),skeleton(1,2)],'euclidean');%%%to be determined
height.lu=pdist([skeleton(5,1),skeleton(5,2);skeleton(6,1),skeleton(6,2)],'euclidean');
height.ll=pdist([skeleton(6,1),skeleton(6,2);skeleton(7,1),skeleton(7,2)],'euclidean');
height.lh=pdist([skeleton(7,1),skeleton(7,2);skeleton(22,1),skeleton(22,2)],'euclidean');
height.ru=pdist([skeleton(9,1),skeleton(9,2);skeleton(10,1),skeleton(10,2)],'euclidean');
height.rl=pdist([skeleton(10,1),skeleton(10,2);skeleton(11,1),skeleton(11,2)],'euclidean');
height.rh=pdist([skeleton(11,1),skeleton(11,2);skeleton(25,1),skeleton(25,2)],'euclidean');
height.lg=pdist([skeleton(13,1),skeleton(13,2);skeleton(15,1),skeleton(15,2)],'euclidean');
height.rg=pdist([skeleton(17,1),skeleton(17,2);skeleton(19,1),skeleton(19,2)],'euclidean');
%height.rc=pdist([skeleton(1,9),skeleton(2,9);skeleton(3,9),skeleton(4,9)]*1.5,'euclidean');




width.body=abs(skeleton(5,1)-skeleton(9,1));
width.head=width.body/2;
factor.arm=0.7%%%%to be determined
factor.hand=0.6;%%%%%%%
factor.leg=0.2;%%%%%%%%
width.lu=factor.arm*height.lu;
width.ll=factor.arm*height.ll;
width.ru=factor.arm*height.ru;
width.rl=factor.arm*height.rl;
width.lh=factor.hand*height.lh;
width.rh=factor.hand*height.rh;
width.lg=factor.leg*height.lg;
width.rg=factor.leg*height.rg;

