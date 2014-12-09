function varargout = reconstruct3(varargin)
% RECONSTRUCT3 MATLAB code for reconstruct3.fig
%      RECONSTRUCT3, by itself, creates a new RECONSTRUCT3 or raises the existing
%      singleton*.
%
%      H = RECONSTRUCT3 returns the handle to a new RECONSTRUCT3 or the handle to
%      the existing singleton*.
%
%      RECONSTRUCT3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECONSTRUCT3.M with the given input arguments.
%
%      RECONSTRUCT3('Property','Value',...) creates a new RECONSTRUCT3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reconstruct3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reconstruct3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reconstruct3

% Last Modified by GUIDE v2.5 08-Dec-2014 21:55:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reconstruct3_OpeningFcn, ...
                   'gui_OutputFcn',  @reconstruct3_OutputFcn, ...
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


% --- Executes just before reconstruct3 is made visible.
function reconstruct3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reconstruct3 (see VARARGIN)

% Choose default command line output for reconstruct3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reconstruct3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reconstruct3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hObject = reconstructcorrectmenu


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radiobutton1value = get  (handles.radiobutton1 , 'Value');
if (radiobutton1value == 1)
   gui_view_jacobian('type','stnd');

end

radiobutton2value = get (handles.radiobutton2 , 'Value');
if (radiobutton2value ==1)
    gui_view_jacobian('type','fluor');
end
radiobutton3value = get (handles.radiobutton3 , 'Value');
if (radiobutton3value ==1)
   gui_view_jacobian('type','spec');
end
radiobutton4value = get (handles.radiobutton4 , 'Value');
if (radiobutton4value ==1)
    gui_view_jacobian('type','stnd_spn');
end
radiobutton5value = get (handles.radiobutton5 , 'Value');
if (radiobutton5value ==1)
gui_view_jacobian('type','stnd_bem');
end
radiobutton6value = get (handles.radiobutton6 , 'Value');
if (radiobutton6value ==1)
    gui_view_jacobian('type','spec_bem');
end
