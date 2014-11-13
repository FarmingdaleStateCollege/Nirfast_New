function varargout = menu_new(varargin)
% MENU_NEW MATLAB code for menu_new.fig
%      MENU_NEW, by itself, creates a new MENU_NEW or raises the existing
%      singleton*.
%
%      H = MENU_NEW returns the handle to a new MENU_NEW or the handle to
%      the existing singleton*.
%
%      MENU_NEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU_NEW.M with the given input arguments.
%
%      MENU_NEW('Property','Value',...) creates a new MENU_NEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menu_new_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menu_new_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menu_new

% Last Modified by GUIDE v2.5 12-Nov-2014 23:55:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menu_new_OpeningFcn, ...
                   'gui_OutputFcn',  @menu_new_OutputFcn, ...
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


% --- Executes just before menu_new is made visible.
function menu_new_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menu_new (see VARARGIN)

% Choose default command line output for menu_new
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menu_new wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% code taken from nirfast 8 and updated for nirfast 8.1
% find workspace variables

vars = evalin('base','whos;');
varnames = {};
[numVar,junk] = size(vars);
nflag = 1;
for i=1:1:numVar
    flag = evalin('base',strcat('isfield(',vars(i).name,',''type'')'));
    if flag
        varnames{nflag} = vars(i).name;
        nflag = nflag + 1;
    end
end
if ~isempty(varnames)
    disp(varnames);
   %set(handles.variables_mesh,'String',varnames);
    set(handles.forward_solver, 'enable','on');
    set(handles.reconstruct_pb, 'enable','on'); 
    set(handles.mesh_info_pb, 'enable', 'on');
end


% --- Outputs from this function are returned to the command line.
function varargout = menu_new_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in file_pb.
function file_pb_Callback(hObject, eventdata, handles)
% hObject    handle to file_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mesh_pb.
function mesh_pb_Callback(hObject, eventdata, handles)
% hObject    handle to mesh_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%launch the create_mesh_simple GUI
create_mesh_simple;
%close the current figure
close(menu_new);

% --- Executes on button press in forward_solver.
function forward_solver_Callback(hObject, eventdata, handles)
% hObject    handle to forward_solver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in reconstruct_pb.
function reconstruct_pb_Callback(hObject, eventdata, handles)
% hObject    handle to reconstruct_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in viewSolution_pb.
function viewSolution_pb_Callback(hObject, eventdata, handles)
% hObject    handle to viewSolution_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui_view_solution();

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

web 'http://code.google.com/p/nirfast/' -browser

% --- Executes on button press in file_new.
function file_new_Callback(hObject, eventdata, handles)
% hObject    handle to file_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%NEED TO ACCESS NIRFAST FROM THIS FUNCTION
%set(handles.script,'String','');
%guidata(hObject, handles);
%-----------------------------------------

% --- Executes on button press in file_open.
function file_open_Callback(hObject, eventdata, handles)
% hObject    handle to file_open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn,pn] = myuigetfile('*.m','Load Script');
if fn == 0
    return;
end
content = importdata([pn fn]);
%nirfast;
%set(handles.script, 'String', content);
guidata(hObject, handles);

% --- Executes on button press in file_save.
function file_save_Callback(hObject, eventdata, handles)
% hObject    handle to file_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%content = get(handles.script,'String');
[fn,pn] = myuiputfile('*.m','Save Script');
if fn == 0
    return;
end
fid = fopen([pn fn],'w');
if (ischar(content)~=0)
    content = cellstr(content);
end
for i=1:1:numel(content)
    fprintf(fid,'%s\n',content{i});
end
fclose(fid);

% --- Executes on button press in load_mesh.
function load_mesh_Callback(hObject, eventdata, handles)
% hObject    handle to load_mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gui_load_mesh

% --- Executes on button press in view_mesh.
function view_mesh_Callback(hObject, eventdata, handles)
% hObject    handle to view_mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gui_view_mesh

% --- Executes on button press in save_mesh.
function save_mesh_Callback(hObject, eventdata, handles)
% hObject    handle to save_mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gui_save_mesh

% --- Executes on button press in data_pb.
function data_pb_Callback(hObject, eventdata, handles)
% hObject    handle to data_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in load_data.
function load_data_Callback(hObject, eventdata, handles)
% hObject    handle to load_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui_load_data();

% --- Executes on button press in view_data.
function view_data_Callback(hObject, eventdata, handles)
% hObject    handle to view_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui_view_data();


% --- Executes on button press in save_data.
function save_data_Callback(hObject, eventdata, handles)
% hObject    handle to save_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gui_save_data();    

% --- Executes during object creation, after setting all properties.
function forward_solver_CreateFcn(hObject, eventdata, handles)
% hObject    handle to forward_solver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


%%%%%%%%%USE CODE FOR CHECKING WORKSPACE VARIABLESS%%%%%%%%%%%%%%%%%%%%


% --- Executes on button press in mesh_info_pb.
function mesh_info_pb_Callback(hObject, eventdata, handles)
% hObject    handle to mesh_info_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%from menu_new for setting pushbuttons to enable off
vars = evalin('base','whos;');
varnames = {};
[numVar,junk] = size(vars);
nflag = 1;
for i=1:1:numVar
    flag = evalin('base',strcat('isfield(',vars(i).name,',''type'')'));
    if flag
        varnames{nflag} = vars(i).name;
        nflag = nflag + 1;
    end
end

%from gui_load_mesh
mainGUIhandle = nirfast;
mainGUIdata  = guidata(mainGUIhandle);
content = get(mainGUIdata.script,'String');
batch = get(mainGUIdata.batch_mode,'Value');

%for loop to continue until the array of workspace variables is over
for i = 1:length(varnames)
    
meshloc = varnames{i};
content{end+1} = strcat(mygenvarname(meshloc),' = load_mesh(''',meshloc,''');');
if ~batch
    evalin('base',content{end});
end

set(mainGUIdata.script, 'String', content);
end;
