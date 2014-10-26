function varargout = create_mesh_simple(varargin)
% CREATE_MESH_SIMPLE MATLAB code for create_mesh_simple.fig
%      CREATE_MESH_SIMPLE, by itself, creates a new CREATE_MESH_SIMPLE or raises the existing
%      singleton*.
%
%      H = CREATE_MESH_SIMPLE returns the handle to a new CREATE_MESH_SIMPLE or the handle to
%      the existing singleton*.
%
%      CREATE_MESH_SIMPLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CREATE_MESH_SIMPLE.M with the given input arguments.
%
%      CREATE_MESH_SIMPLE('Property','Value',...) creates a new CREATE_MESH_SIMPLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before create_mesh_simple_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to create_mesh_simple_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help create_mesh_simple

% Last Modified by GUIDE v2.5 25-Oct-2014 20:35:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @create_mesh_simple_OpeningFcn, ...
                   'gui_OutputFcn',  @create_mesh_simple_OutputFcn, ...
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


% --- Executes just before create_mesh_simple is made visible.
function create_mesh_simple_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to create_mesh_simple (see VARARGIN)

% Choose default command line output for create_mesh_simple
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes create_mesh_simple wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = create_mesh_simple_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in create_mesh.
function create_mesh_Callback(hObject, eventdata, handles)
% hObject    handle to create_mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data(see GUIDATA)

%create_mesh_simple('String', 'You chose to create a mesh')
%guide(create_mesh_option1.fig)

close(create_mesh_simple);
hObject = create_mesh_option1;

% --- Executes on button press in change_mesh_type.
function change_mesh_type_Callback(hObject, eventdata, handles)
% hObject    handle to change_mesh_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in change_optical_prop.
function change_optical_prop_Callback(hObject, eventdata, handles)
% hObject    handle to change_optical_prop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in add_anomaly.
function add_anomaly_Callback(hObject, eventdata, handles)
% hObject    handle to add_anomaly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in export_mesh.
function export_mesh_Callback(hObject, eventdata, handles)
% hObject    handle to export_mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in previous_pb.
function previous_pb_Callback(hObject, eventdata, handles)
% hObject    handle to previous_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

hObject = menu_new;
close(create_mesh_simple);
