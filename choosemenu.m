function varargout = choosemenu(varargin)
% CHOOSEMENU MATLAB code for choosemenu.fig
%      CHOOSEMENU, by itself, creates a new CHOOSEMENU or raises the existing
%      singleton*.
%
%      H = CHOOSEMENU returns the handle to a new CHOOSEMENU or the handle to
%      the existing singleton*.
%
%      CHOOSEMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHOOSEMENU.M with the given input arguments.
%
%      CHOOSEMENU('Property','Value',...) creates a new CHOOSEMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before choosemenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to choosemenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help choosemenu

% Last Modified by GUIDE v2.5 16-Dec-2014 15:48:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @choosemenu_OpeningFcn, ...
                   'gui_OutputFcn',  @choosemenu_OutputFcn, ...
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


% --- Executes just before choosemenu is made visible.
function choosemenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to choosemenu (see VARARGIN)

% Choose default command line output for choosemenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes choosemenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = choosemenu_OutputFcn(hObject, eventdata, handles) 
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
close (choosemenu)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radiobutton1value = get (handles.radiobutton1 , 'Value');
if (radiobutton1value == 1)
    close (choosemenu)
    hObject = reconstructmenu
else

%radiobutton2value = get (handles.radiobutton2 , 'Value');
%if (radiobutton2value == 1)
    hObject = jacobianmenu
    close (choosemenu)
end
