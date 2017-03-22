

function varargout = helloworld(varargin)
% HELLOWORLD MATLAB code for helloworld.fig
%      HELLOWORLD, by itself, creates a new HELLOWORLD or raises the existing
%      singleton*.
%
%      H = HELLOWORLD returns the handle to a new HELLOWORLD or the handle to
%      the existing singleton*.
%
%      HELLOWORLD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELLOWORLD.M with the given input arguments.
%
%      HELLOWORLD('Property','Value',...) creates a new HELLOWORLD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before helloworld_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to helloworld_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help helloworld

% Last Modified by GUIDE v2.5 05-Mar-2017 17:54:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @helloworld_OpeningFcn, ...
                   'gui_OutputFcn',  @helloworld_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before helloworld is made visible.
function helloworld_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to helloworld (see VARARGIN)

% Choose default command line output for helloworld
handles.output = hObject;
handles.click = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes helloworld wait for user response (see UIRESUME)
% uiwait(handles.figure1);
function varargout = helloworld_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure



% --- Executes on button press in previous_button.
function previous_button_Callback(hObject, eventdata, handles)
% hObject    handle to previous_button (see GCBOnu)
%check=get(handles.previous_button,'userdata');
%if isempty(check)
 % check = 1; % first call
%else
 % check = check+1;
%end

%set(handles.previous_button, 'userdata', check);
if handles.num ~=1
    handles.num=handles.num-1;
   % if check ==1
    %handles.imgs(handles.num).sequence =imread(handles.displays{handles.num});
    %axes(handles.display)
   %imshow(handles.imgs(handles.num).sequence);
    %guidata(hObject,handles);
    %else
   axes(handles.display)
   imshow(handles.imgs(handles.num).sequence);   
   guidata(hObject,handles);
    %end
else
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in next_button.
function next_button_Callback(hObject, eventdata, handles)

% hObject    handle to next_button (see GCBO)
if handles.num < handles.index
    handles.num=handles.num+1;
 
   % handles.imgs(handles.num).sequence =imread(handles.displays{handles.num});
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
   
    

else
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)

    if handles.rgbdepthtransfer==0
        handles.rgbdepthtransfer=1;
    else
         handles.rgbdepthtransfer=0;
    end
    guidata(hObject,handles);
    if handles.rgbdepthtransfer==1;
    axes(handles.display)
    imshow(handles.depthimgs(handles.num).sequence);
    else
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    end
    guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Loadimage.
function Loadimage_Callback(hObject, eventdata, handles)
% hObject    handle to Loadimage (see GCBO)
  Jump_handle=Jump;
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in saveoutput.

% hObject    handle to saveoutput (see GCBO)



  
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in displaybutton.
function displaybutton_Callback(hObject, eventdata, handles)
% hObject    handle to displaybutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.click=1;
handles.rgbdepthtransfer=0;
handles.cleanflag=0;
handles.cleanpixel=0;
handles.displays=getappdata(0,'Mystruct');
handles.index=getappdata(0,'Myindex');
handles.labels=getappdata(0,'Mylabel');
handles.org=getappdata(0,'Myorg');
set(handles.figure1,'toolbar','figure');
set(handles.figure1,'menubar','figure');
%handles.depthdisplays=getappdata(0,'Mydepthstruct');
%handles.depthindex=getappdata(0,'Mydepthindex')

handles.indentifier=0;
handles.super=0;
guidata(hObject,handles);
for i=1:handles.index
 handles.imgs(i).sequence =imread(handles.displays{i});
 %handles.depthimgs(i).sequence=imread(handles.depthdisplays{i});
 handles.cleanimgs(i).sequence=imread(handles.org{i}); % for clean pupose
 handles.superphoto(i).sequence =imread(handles.displays{i});%to preserve photos for superpixel process
 %handles.lable(i).pixel=zeros(size(handles.imgs(i).sequence,1));
end
handles.rowsize=size(handles.imgs(handles.index).sequence,1);
handles.colsize=size(handles.imgs(handles.index).sequence,2);
axes(handles.display)
%imshow(handles.displays{handles.index});
imshow(handles.imgs(handles.index).sequence);
handles.num=1;
handles.num=handles.index;
handles.hPixelInfo = impixelinfo();
guidata(hObject,handles);


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.

% hObject    handle to figure1 (see GCBO)

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)

[x,y]=ginput(1);
x=round(x);
y=round(y);
%handles.hPixelInfo = impixelinfo();
if handles.super == 0
    if handles.cleanpixel==1
        handles.labels(handles.num).labels(y,x)=0;
        sprintf('aaaaaa')
        handles.imgs(handles.num).sequence(y,x,1)=handles.cleanimgs(handles.num).sequence(y,x,1);
         handles.imgs(handles.num).sequence(y,x,2)=handles.cleanimgs(handles.num).sequence(y,x,2);
          handles.imgs(handles.num).sequence(y,x,3)=handles.cleanimgs(handles.num).sequence(y,x,3);
        
        handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
        axes(handles.display)
        imshow(handles.imgs(handles.num).sequence);
        guidata(hObject,handles);
        
    else  
if handles.indentifier == 1
handles.labels(handles.num).labels(y,x)=1;
handles.imgs(handles.num).sequence(y,x,1)=255;
handles.imgs(handles.num).sequence(y,x,2)=0;
handles.imgs(handles.num).sequence(y,x,3)=0;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 2
handles.labels(handles.num).labels(y,x)=2;
handles.imgs(handles.num).sequence(y,x,1)=0;
handles.imgs(handles.num).sequence(y,x,2)=0;
handles.imgs(handles.num).sequence(y,x,3)=255;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 3
handles.labels(handles.num).labels(y,x)=3;
handles.imgs(handles.num).sequence(y,x,1)=0;
handles.imgs(handles.num).sequence(y,x,2)=255;
handles.imgs(handles.num).sequence(y,x,3)=0;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);


elseif handles.indentifier == 4
handles.labels(handles.num).labels(y,x)=4;
handles.imgs(handles.num).sequence(y,x,1)=255;
handles.imgs(handles.num).sequence(y,x,2)=255;
handles.imgs(handles.num).sequence(y,x,3)=0;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 5
handles.labels(handles.num).labels(y,x)=5;
handles.imgs(handles.num).sequence(y,x,1)=125;
handles.imgs(handles.num).sequence(y,x,2)=0;
handles.imgs(handles.num).sequence(y,x,3)=125;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 6
handles.labels(handles.num).labels(y,x)=6;
handles.imgs(handles.num).sequence(y,x,1)=255;
handles.imgs(handles.num).sequence(y,x,2)=0;
handles.imgs(handles.num).sequence(y,x,3)=255;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);


elseif handles.indentifier == 7
handles.labels(handles.num).labels(y,x)=7;
handles.imgs(handles.num).sequence(y,x,1)=0;
handles.imgs(handles.num).sequence(y,x,2)=255;
handles.imgs(handles.num).sequence(y,x,3)=255;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 8
handles.labels(handles.num).labels(y,x)=8;
handles.imgs(handles.num).sequence(y,x,1)=0;
handles.imgs(handles.num).sequence(y,x,2)=125;
handles.imgs(handles.num).sequence(y,x,3)=200;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

elseif handles.indentifier == 9
handles.labels(handles.num).labels(y,x)=9;
handles.imgs(handles.num).sequence(y,x,1)=120;
handles.imgs(handles.num).sequence(y,x,2)=120;
handles.imgs(handles.num).sequence(y,x,3)=120;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);


elseif handles.indentifier == 10
handles.labels(handles.num).labels(y,x)=10;
handles.imgs(handles.num).sequence(y,x,1)=10;
handles.imgs(handles.num).sequence(y,x,2)=200;
handles.imgs(handles.num).sequence(y,x,3)=255;
handles.superphoto(handles.num).sequence=handles.imgs(handles.num).sequence;
axes(handles.display)
imshow(handles.imgs(handles.num).sequence);
guidata(hObject,handles);

else

end
    end
else
    position=(x-1)*handles.rowsize+y;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%need to be change in the future
    handles.idx=label2idx(handles.L);
    for i=1:handles.N
       location=find([handles.idx{i}]==position);
       if isempty(location)
        else handles.n=i;
        end
    end
    
    handles.redIdx=  handles.idx{handles.n};
    handles.greenIdx=  handles.idx{handles.n}+handles.rowsize*handles.colsize;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%need to be modified
    handles.blueIdx=  handles.idx{handles.n}+handles.rowsize*handles.colsize*2;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%+1
    if handles.cleanflag==0
    
    if handles.indentifier==1
    handles.labels(handles.num).labels(handles.redIdx)=1;
    handles.imgs(handles.num).sequence(handles.redIdx)=255;
    handles.imgs(handles.num).sequence(handles.greenIdx)=0;
    handles.imgs(handles.num).sequence(handles.blueIdx)=0;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=255; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=0;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=0;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    elseif handles.indentifier==2
    handles.labels(handles.num).labels(handles.redIdx)=2;
    handles.imgs(handles.num).sequence(handles.redIdx)=0;
    handles.imgs(handles.num).sequence(handles.greenIdx)=0;
    handles.imgs(handles.num).sequence(handles.blueIdx)=255;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=0; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=0;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=255;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
    elseif handles.indentifier==3
    handles.labels(handles.num).labels(handles.redIdx)=3;
    handles.imgs(handles.num).sequence(handles.redIdx)=0;
    handles.imgs(handles.num).sequence(handles.greenIdx)=255;
    handles.imgs(handles.num).sequence(handles.blueIdx)=0;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=0; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=255;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=0;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
    elseif handles.indentifier==4
    handles.labels(handles.num).labels(handles.redIdx)=4;
    handles.imgs(handles.num).sequence(handles.redIdx)=255;
    handles.imgs(handles.num).sequence(handles.greenIdx)=255;
    handles.imgs(handles.num).sequence(handles.blueIdx)=0;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=255; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=255;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=0;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
    elseif handles.indentifier==5
    handles.labels(handles.num).labels(handles.redIdx)=5;
    handles.imgs(handles.num).sequence(handles.redIdx)=125;
    handles.imgs(handles.num).sequence(handles.greenIdx)=0;
    handles.imgs(handles.num).sequence(handles.blueIdx)=125;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=125; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=0;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=125;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
    elseif handles.indentifier==6
    handles.labels(handles.num).labels(handles.redIdx)=6;
    handles.imgs(handles.num).sequence(handles.redIdx)=255;
    handles.imgs(handles.num).sequence(handles.greenIdx)=0;
    handles.imgs(handles.num).sequence(handles.blueIdx)=255;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=255; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=0;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=255;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
    elseif handles.indentifier==7
    handles.labels(handles.num).labels(handles.redIdx)=7;
    handles.imgs(handles.num).sequence(handles.redIdx)=0;
    handles.imgs(handles.num).sequence(handles.greenIdx)=255;
    handles.imgs(handles.num).sequence(handles.blueIdx)=255;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=0; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=255;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=255;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
      elseif handles.indentifier==8
    handles.labels(handles.num).labels(handles.redIdx)=8;
    handles.imgs(handles.num).sequence(handles.redIdx)=0;
    handles.imgs(handles.num).sequence(handles.greenIdx)=125;
    handles.imgs(handles.num).sequence(handles.blueIdx)=200;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=0; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=125;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=200 ;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
     elseif handles.indentifier==9
    handles.labels(handles.num).labels(handles.redIdx)=9;
    handles.imgs(handles.num).sequence(handles.redIdx)=120;
    handles.imgs(handles.num).sequence(handles.greenIdx)=120;
    handles.imgs(handles.num).sequence(handles.blueIdx)=120;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=120; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=120;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=120;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    
     elseif handles.indentifier==10
    handles.labels(handles.num).labels(handles.redIdx)=10;
    handles.imgs(handles.num).sequence(handles.redIdx)=10;
    handles.imgs(handles.num).sequence(handles.greenIdx)=200;
    handles.imgs(handles.num).sequence(handles.blueIdx)=255;
    
    handles.superphoto(handles.num).sequence(handles.redIdx)=10; %%%finished photo
    handles.superphoto(handles.num).sequence(handles.greenIdx)=200;
    handles.superphoto(handles.num).sequence(handles.blueIdx)=255;
    
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    else
    end
    
    else
    handles.cleanflag=0;
    handles.labels(handles.num).labels(handles.redIdx)=0;
    handles.imgs(handles.num).sequence(handles.redIdx)=handles.cleanimgs(handles.num).sequence(handles.redIdx);
    handles.imgs(handles.num).sequence(handles.greenIdx)=handles.cleanimgs(handles.num).sequence(handles.greenIdx);
    handles.imgs(handles.num).sequence(handles.blueIdx)=handles.cleanimgs(handles.num).sequence(handles.blueIdx);
    handles.superphoto(handles.num).sequence(handles.redIdx)=handles.cleanimgs(handles.num).sequence(handles.redIdx);
    handles.superphoto(handles.num).sequence(handles.greenIdx)=handles.cleanimgs(handles.num).sequence(handles.greenIdx);
    handles.superphoto(handles.num).sequence(handles.blueIdx)=handles.cleanimgs(handles.num).sequence(handles.blueIdx);
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
    end
end
guidata(hObject,handles);
display(x);
display(y);
%display(handles.lable(handles.num).pixel(y,x));


% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in torso.
function torso_Callback(hObject, eventdata, handles)
% hObject    handle to torso (see GCBO)
handles.indentifier=1;
%handles.hPixelInfo = impixelinfo();
guidata(hObject,handles);
disp('hi');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of torso


% --- Executes on button press in LUarm.
function LUarm_Callback(hObject, eventdata, handles)
% hObject    handle to LUarm (see GCBO)
handles.indentifier=2;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LUarm


% --- Executes on button press in LWarm.
function LWarm_Callback(hObject, eventdata, handles)
% hObject    handle to LWarm (see GCBO)
handles.indentifier=3;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LWarm


% --- Executes on button press in Lhand.
function Lhand_Callback(hObject, eventdata, handles)
% hObject    handle to Lhand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
handles.indentifier=4;
guidata(hObject,handles);
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Lhand


% --- Executes on button press in RUarm.
function RUarm_Callback(hObject, eventdata, handles)
% hObject    handle to RUarm (see GCBO)
handles.indentifier=5;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RUarm


% --- Executes on button press in RWarm.
function RWarm_Callback(hObject, eventdata, handles)
% hObject    handle to RWarm (see GCBO)
handles.indentifier=6;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of RWarm


% --- Executes on button press in Rhand.
function Rhand_Callback(hObject, eventdata, handles)
% hObject    handle to Rhand (see GCBO)
handles.indentifier=7;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Rhand


% --- Executes on button press in Debug.
function Debug_Callback(hObject, eventdata, handles)
% hObject    handle to Debug (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
keyboard


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
lables=handles.labels;
imgdata=handles.imgs;
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uisave({'lables','imgdata'});
[FileName,PathName] = uiputfile;
disp(FileName)
handles.str=strcat(PathName,FileName)

for i=1:handles.index
   imwrite(handles.imgs(i).sequence,sprintf('%s%d.png',handles.str,i));
end



% --- Executes on button press in superpixel.
function superpixel_Callback(hObject, eventdata, handles)
% hObject    handle to superpixel (see GCBO)
handles.super=1;%flag for superpixel
handles.N=0; %record the pieces of superpixel
handles.L={};%record for the lable
[handles.L,handles.N]= superpixels(handles.imgs(handles.num).sequence,10000);
BW=boundarymask(handles.L);

handles.imgs(handles.num).sequence=imoverlay(handles.imgs(handles.num).sequence,BW);
 %guidata(hObject,handles);
  %handles.n=1;
  % handles.redIdx=  handles.idx{handles.n};
  % handles.greenIdx=  handles.idx{handles.n}+256*256;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%need to be modified
  % handles.blueIdx=  handles.idx{handles.n}+256*256*2;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%+1
   % handles.imgs(handles.num).sequence(handles.redIdx)=255;
  %  handles.imgs(handles.num).sequence(handles.greenIdx)=0;
   % handles.imgs(handles.num).sequence(handles.blueIdx)=0;
    %guidata(hObject,handles);
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);
%axes(handles.display)
%imshow(handles.imgs(handles.num).sequence);
%guidata(hObject,handles);



% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in finish.
function finish_Callback(hObject, eventdata, handles)
    handles.super=0;
    handles.imgs =handles.superphoto;
    axes(handles.display)
    imshow(handles.imgs(handles.num).sequence);
    guidata(hObject,handles);

% hObject    handle to finish (see GCBO)

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, ~, handles)
% hObject    handle to figure1 (see GCBO)
%if handles.click==1;

%{ 
if handles.click == 1;
pos = get(handles.display,'currentpoint');
x=pos(1,1);
y=pos(2,2);
%a=(x-473)*256/519.4;
%b=(639-y)*256/498;
handles.x=round(x);
handles.y=round(y);
guidata(hObject,handles);
lable=handles.labels(handles.num).labels(handles.y,handles.x);
set(handles.text3,'string',['x,y loc: ' num2str(handles.x) ',' num2str(handles.y) ', lable: ' num2str(lable)]);
end
%}
%handles.hPixelInfo = impixelinfo();
%end
%set(hPixelInfo, 'Unit', 'Normalized', 'Position', [.81 .89 .2 .1]);



% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key release with focus on figure1 or any of its controls.
function figure1_WindowKeyReleaseFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)

% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was released, in lower case
%	Character: character interpretation of the key(s) that was released
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) released
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Clean.
function Clean_Callback(hObject, eventdata, handles)
% hObject    handle to Clean (see GCBO)
if handles.super == 0
    h= msgbox('Please click superpixel first');
    
else
    handles.cleanflag=1;
    
    
end
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Cleanall.
function Cleanall_Callback(hObject, eventdata, handles)
if handles.super == 1
    h= msgbox('Please click finish first');
else
handles.cleanpixel=1;
end
guidata(hObject,handles); 

% hObject    handle to Cleanall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
handles.indentifier=8;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
handles.indentifier=9;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
handles.indentifier=10;
guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in cleanfinish.
function cleanfinish_Callback(hObject, eventdata, handles)
% hObject    handle to cleanfinish (see GCBO)
handles.cleanpixel=0;
   guidata(hObject,handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on scroll wheel click while the figure is in focus.
function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Automatic.
function Automatic_Callback(hObject, eventdata, handles)
% hObject    handle to Automatic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
