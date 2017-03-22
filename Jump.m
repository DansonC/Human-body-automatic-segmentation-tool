function varargout = Jump(varargin)
% JUMP MATLAB code for Jump.fig
%      JUMP, by itself, creates a new JUMP or raises the existing
%      singleton*.
%
%      H = JUMP returns the handle to a new JUMP or the handle to
%      the existing singleton*.
%
%      JUMP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JUMP.M with the given input arguments.
%
%      JUMP('Property','Value',...) creates a new JUMP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Jump_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Jump_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Jump

% Last Modified by GUIDE v2.5 04-Mar-2017 10:19:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Jump_OpeningFcn, ...
                   'gui_OutputFcn',  @Jump_OutputFcn, ...
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


% --- Executes just before Jump is made visible.
function Jump_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Jump (see VARARGIN)

% Choose default command line output for Jump
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Jump wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Jump_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in previousbutton.
function previousbutton_Callback(hObject, eventdata, handles)


if handles.hits ~=1
    handles.hits=handles.hits-1;
    axes(handles.RGBimage)
    imshow(handles.rgbimage{handles.hits});
    guidata(hObject,handles);
else
end

%if handles.depthhits ~=1
    %handles.depthhits=handles.depthhits-1;
   % axes(handles.Depth)
   % imshow(handles.depthimage{handles.depthhits});
   % guidata(hObject,handles);
%else
%end
    
    
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nextbutton.
function nextbutton_Callback(hObject, eventdata, handles)
% hObject    handle to nextbutton (see GCBO)
if handles.hits < handles.count-1
    handles.hits=handles.hits+1;
    axes(handles.RGBimage)
    imshow(handles.rgbimage{handles.hits});
    guidata(hObject,handles);
else
end

%if handles.depthhits < handles.depthcount-1
   % handles.depthhits=handles.depthhits+1;
    %axes(handles.Depth)
    %imshow(handles.depthimage{handles.depthhits});
    %guidata(hObject,handles);
%else
%end
    
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RGBbutton.
function RGBbutton_Callback(hObject, eventdata, handles)
% hObject    handle to RGBbutton (see GCBO)
[filename pathname] = uigetfile({'*.png';'*.tiff';'*.jpg';'*.bmp'},'File Selector');
[filename1 pathname1]=uigetfile({'*.png';'*.tiff';'*.jpg';'*.bmp'},'File Selector');
if filename ~=0 
calls=get(handles.RGBbutton,'userdata');
if isempty(calls)
  calls = 1; % first call
else
  calls = calls+1;
end
set(handles.RGBbutton, 'userdata', calls);

if calls==1
handles.count=1;
handles.labelcount=1;
handles.rgbimage{handles.count}=[pathname filename];
handles.rgborig{handles.count}=[pathname1 filename1];
axes(handles.RGBimage)
imshow(handles.rgbimage{handles.count});

handles.count=handles.count+1;
handles.hits=1;
      guidata(hObject,handles);
      
else
    handles.rgbimage{handles.count}=[pathname filename];
    handles.rgborig{handles.count}=[pathname1 filename1];
    axes(handles.RGBimage)
imshow(handles.rgbimage{handles.count});

    handles.count=handles.count+1;
    handles.hits=handles.count-1;
      guidata(hObject,handles);
end





guidata(hObject,handles);
 %[filename pathname] = uigetfile({'*.tiff';'*.jpg';'*.bmp';'*.png'},'File Selector');
 %if filename ~=0
 

% handles.i=2;
 
%handles.filenamenew=[filename(1:(end-5)) num2str(handles.i) filename((end-3):end)];
%handles.check={};
%handles.check{handles.count}=handles.filenamenew;
%handles.test=[filename(1:(end-5)) num2str(10-round(10/10)*10) filename((end-3):end)];
 %handles.test=[handles.test(1:(end-6)) num2str(round(10/10)) handles.test((end-4):end)];
 %while  exist([pathname handles.filenamenew],'file')==2
         %handles.check{handles.count}=handles.filenamenew;
        % handles.count=handles.count+1;
         %handles.rgbimage{handles.count}=[pathname handles.filenamenew];
        % handles.i=handles.i+1;
      %   if handles.i<10
  %handles.filenamenew=[filename(1:(end-5)) num2str(handles.i) filename((end-3):end)];
       %  elseif handles.i>9 
           %    handles.filenamenew=[filename(1:(end-5)) num2str(abs(handles.i-round(handles.i/10)*10)) filename((end-3):end)];
               
            %   handles.filenamenew=[handles.filenamenew(1:(end-6)) num2str(abs(round(handles.i/10))) handles.filenamenew((end-4):end)];
         %end

 %end
 
%filenamenew=strrep(filename,filename(end),num2str(i))

% end
 

%handles.count=1;
%[filename pathname] = uigetfile({'*.jpg';'*.bmp';'*.png'},'File Selector');
% if filename ~=0
%handles.rgbimage{handles.count}=[pathname filename];
%%imshow(handles.rgbimage{handles.count});
%handles.count=handles.count+1;
%handles.hits=1;
%handles.hits=handles.count-1;

%guidata(hObject,handles);

end



% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in depthbutton.
function depthbutton_Callback(hObject, eventdata, handles)
[filename pathname] = uigetfile({'*.tiff';'*.jpg';'*.bmp';'*.png'},'File Selector');
 if filename ~=0
call=get(handles.depthbutton,'userdata');
if isempty(call)
  call = 1; % first call
else
  call = call+1;
end
set(handles.depthbutton, 'userdata', call);

if call~=1
% [filename pathname] = uigetfile({'*.tiff';'*.jpg';'*.bmp';'*.png'},'File Selector');
 % if filename ~=0
 handles.depthimage{handles.depthcount}=[pathname filename];
 axes(handles.Depth)
 imshow(handles.depthimage{handles.depthcount});
handles.depthcount=handles.depthcount+1;
handles.depthhits=1;
handles.depthhits=handles.depthcount-1;

guidata(hObject,handles);
 % end
  
else    
handles.depthcount=1;
%[filename pathname] = uigetfile({'*.jpg';'*.bmp';'*.png'},'File Selector');
 %if filename ~=0 
handles.depthimage{handles.depthcount}=[pathname filename];
axes(handles.Depth)
imshow(handles.depthimage{handles.depthcount});
handles.depthcount=handles.depthcount+1;
handles.depthhits=1;
handles.depthhits=handles.count-1;

guidata(hObject,handles);
 %end
end
 end

% --- Executes on button press in skeletonbutton.
function skeletonbutton_Callback(hObject, eventdata, handles)
% hObject    handle to skeletonbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in debug.
function debug_Callback(hObject, eventdata, handles)
% hObject    handle to debug (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
keyboard
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Done.
function Done_Callback(hObject, eventdata, handles)
% hObject    handle to Done (see GCBO)


      handles.back_handle = helloworld;
      display=handles.rgbimage;
      labels=handles.label;
      org=handles.rgborig;
    %  depthdisplay=handles.depthimage;
      index=handles.count-1;
    %  depthindex=handles.depthcount-1;
      setappdata(0,'Mylabel',labels);
      setappdata(0,'Myindex',index);
      setappdata(0,'Mystruct',display);
         setappdata(0,'Myorg',org);
    %  setappdata(0,'Mydepthindex',depthindex);
     % setappdata(0,'Mydepthstruct',depthdisplay);

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function Depth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Depth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Depth


% --- Executes on button press in Label.
function Label_Callback(hObject, eventdata, handles)

[filename pathname] = uigetfile({'*.mat';'*.tiff';'*.jpg';'*.bmp';'*.png'},'File Selector');
handles.label(handles.labelcount)=load([pathname filename]);
handles.labelcount=handles.labelcount+1;
guidata(hObject,handles);



% hObject    handle to Label (see GCBO)

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
