function varargout = Gui_Probe1(varargin)
clc;
% GUI_PROBE1 MATLAB code for Gui_Probe1.fig
%      GUI_PROBE1, by itself, creates a new GUI_PROBE1 or raises the existing
%      singleton*.
%
%      H = GUI_PROBE1 returns the handle to a new GUI_PROBE1 or the handle to
%      the existing singleton*.
%
%      GUI_PROBE1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PROBE1.M with the given input arguments.
%
%      GUI_PROBE1('Property','Value',...) creates a new GUI_PROBE1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_Probe1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_Probe1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui_Probe1

% Last Modified by GUIDE v2.5 13-Jan-2020 14:57:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_Probe1_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_Probe1_OutputFcn, ...
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


% --- Executes just before Gui_Probe1 is made visible.
function Gui_Probe1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui_Probe1 (see VARARGIN)

% Choose default command line output for Gui_Probe1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui_Probe1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui_Probe1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function System_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to System_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% system = str2double(get(handles.System_EditText,'String')) %to convert to double
% handles.System_EditText = system;
% guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of System_EditText as text
%        str2double(get(hObject,'String')) returns contents of System_EditText as a double


% --- Executes during object creation, after setting all properties.
function System_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to System_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Variables_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to Variables_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% vars = str2double(get(handles.Variables_EditText,'String'))

% Hints: get(hObject,'String') returns contents of Variables_EditText as text
%        str2double(get(hObject,'String')) returns contents of Variables_EditText as a double


% --- Executes during object creation, after setting all properties.
function Variables_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Variables_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Initial_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to Initial_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% ini = str2double(get(handles.Initial_EditText,'String'))

% Hints: get(hObject,'String') returns contents of Initial_EditText as text
%        str2double(get(hObject,'String')) returns contents of Initial_EditText as a double


% --- Executes during object creation, after setting all properties.
function Initial_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Initial_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Initialss_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to Initialss_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Initialss_EditText as text
%        str2double(get(hObject,'String')) returns contents of Initialss_EditText as a double


% --- Executes during object creation, after setting all properties.
function Initialss_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Initialss_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Evals_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to Evals_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Evals_EditText as text
%        str2double(get(hObject,'String')) returns contents of Evals_EditText as a double


% --- Executes during object creation, after setting all properties.
function Evals_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Evals_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InitialTime_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to InitialTime_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InitialTime_EditText as text
%        str2double(get(hObject,'String')) returns contents of InitialTime_EditText as a double


% --- Executes during object creation, after setting all properties.
function InitialTime_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InitialTime_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FinalTime_EditText_Callback(hObject, eventdata, handles)
% hObject    handle to FinalTime_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FinalTime_EditText as text
%        str2double(get(hObject,'String')) returns contents of FinalTime_EditText as a double


% --- Executes during object creation, after setting all properties.
function FinalTime_EditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FinalTime_EditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Start_PushButton.
function Start_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Start_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
system = str2func(get(handles.System_EditText,'String')); %to convert to double
var = str2double(get(handles.Variables_EditText,'String'));
ini = str2num(get(handles.Initial_EditText,'String'));
h = str2double(get(handles.Initialss_EditText,'String'));
evals = str2double(get(handles.Evals_EditText,'String'));
tini = str2double(get(handles.InitialTime_EditText,'String'));
tfin = str2double(get(handles.FinalTime_EditText,'String'));

if (var < 3 || isnan(var))
        error('The number of variables is wrong.');
        % Break the program if the variables are wrong
end

if (isnan(ini))
        error('The number of initial conditions is wrong.');
        % Break the program if the initial conditions are wrong
end

if (h < 0 || isnan(h))
        error('The step-size is wrong.');
        % Break the program if the step-size is wrong
end

if (evals < 1 || isnan(evals))
        error('The number of evaluations is wrong.');
        % Break the program if the evaluations are wrong
end

if (tini < 0 || isnan(tini))
        error('The initial time is wrong.');
        % Break the program if the initial time is wrong
end

if (tfin <= tini || isnan(tfin))
        error('The final time is wrong.');
        % Break the program if the final time is wrong
end

function_stepsize(system,var,ini,h,evals,tini,tfin);
