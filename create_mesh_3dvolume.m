function varargout = create_mesh_3dvolume(varargin)
% CREATE_MESH_3DVOLUME MATLAB code for create_mesh_3dvolume.fig
%      CREATE_MESH_3DVOLUME, by itself, creates a new CREATE_MESH_3DVOLUME or raises the existing
%      singleton*.
%
%      H = CREATE_MESH_3DVOLUME returns the handle to a new CREATE_MESH_3DVOLUME or the handle to
%      the existing singleton*.
%
%      CREATE_MESH_3DVOLUME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CREATE_MESH_3DVOLUME.M with the given input arguments.
%
%      CREATE_MESH_3DVOLUME('Property','Value',...) creates a new CREATE_MESH_3DVOLUME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before create_mesh_3dvolume_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to create_mesh_3dvolume_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help create_mesh_3dvolume

% Last Modified by GUIDE v2.5 28-Oct-2014 00:38:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @create_mesh_3dvolume_OpeningFcn, ...
                   'gui_OutputFcn',  @create_mesh_3dvolume_OutputFcn, ...
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


% --- Executes just before create_mesh_3dvolume is made visible.
function create_mesh_3dvolume_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to create_mesh_3dvolume (see VARARGIN)

% Choose default command line output for create_mesh_3dvolume
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes create_mesh_3dvolume wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = create_mesh_3dvolume_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in standard_pb.
function standard_pb_Callback(hObject, eventdata, handles)
% hObject    handle to standard_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of standard_pb

gui_create_mesh_3D_volume('type','stnd');

% --- Executes on button press in flourescence_pb.
function flourescence_pb_Callback(hObject, eventdata, handles)
% hObject    handle to flourescence_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of flourescence_pb

gui_create_mesh_3D_volume('type','fluor');

% --- Executes on button press in spectral_pb.
function spectral_pb_Callback(hObject, eventdata, handles)
% hObject    handle to spectral_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of spectral_pb

gui_create_mesh_3D_volume('type','spec');

% --- Executes on button press in spn_pb.
function spn_pb_Callback(hObject, eventdata, handles)
% hObject    handle to spn_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of spn_pb

gui_create_mesh_3D_volume('type','stnd_spn');

% --- Executes on button press in bem_pb.
function bem_pb_Callback(hObject, eventdata, handles)
% hObject    handle to bem_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bem_pb


% --- Executes on button press in bem_spectral_pb.
function bem_spectral_pb_Callback(hObject, eventdata, handles)
% hObject    handle to bem_spectral_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bem_spectral_pb


% --- Executes on button press in bem_flourescence_pb.
function bem_flourescence_pb_Callback(hObject, eventdata, handles)
% hObject    handle to bem_flourescence_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bem_flourescence_pb


% --- Executes on button press in previous_pb.
function previous_pb_Callback(hObject, eventdata, handles)
% hObject    handle to previous_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(gcf);
create_mesh_option1;


% --- Executes during object creation, after setting all properties.
function q1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
