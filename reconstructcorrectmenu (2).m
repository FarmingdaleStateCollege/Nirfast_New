function varargout = reconstructcorrectmenu(varargin)
% RECONSTRUCTCORRECTMENU MATLAB code for reconstructcorrectmenu.fig
%      RECONSTRUCTCORRECTMENU, by itself, creates a new RECONSTRUCTCORRECTMENU or raises the existing
%      singleton*.
%
%      H = RECONSTRUCTCORRECTMENU returns the handle to a new RECONSTRUCTCORRECTMENU or the handle to
%      the existing singleton*.
%
%      RECONSTRUCTCORRECTMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECONSTRUCTCORRECTMENU.M with the given input arguments.
%
%      RECONSTRUCTCORRECTMENU('Property','Value',...) creates a new RECONSTRUCTCORRECTMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reconstructcorrectmenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reconstructcorrectmenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reconstructcorrectmenu

% Last Modified by GUIDE v2.5 08-Dec-2014 21:40:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reconstructcorrectmenu_OpeningFcn, ...
                   'gui_OutputFcn',  @reconstructcorrectmenu_OutputFcn, ...
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


% --- Executes just before reconstructcorrectmenu is made visible.
function reconstructcorrectmenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reconstructcorrectmenu (see VARARGIN)

% Choose default command line output for reconstructcorrectmenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reconstructcorrectmenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reconstructcorrectmenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
if (get(hObject,'Value') == get(hObject,'Max'))
	display('Selected');
else
	display('Not selected');
end



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete (reconstructcorrectmenu)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

radiobutton1value = get (handles.radiobutton1 , 'Value');
if (radiobutton1value == 1)
    close (reconstructcorrectmenu)
    hObject = reconstructmenu
end

radiobutton2value = get (handles.radiobutton2 , 'Value');
if (radiobutton2value == 1)
    hObject = jacobianmenu
    close (reconstructcorrectmenu)
end