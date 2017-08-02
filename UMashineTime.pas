unit UMashineTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ADODB, ComCtrls, ExtCtrls, Menus, StdCtrls, Grids,
  DBGrids, DBCtrls, ToolWin, XPMan, ImgList;

type
  TFMainForm = class(TForm)
    TableMain: TADOTable;
    TableAuditorii: TADOTable;
    TableWorkType: TADOTable;
    TableSoftType: TADOTable;
    TableErrors: TADOTable;
    MainMenu: TMainMenu;
    MainMEnu2: TMenuItem;
    PanelEdit: TPanel;
    TimeTimer: TTimer;
    mbConnect: TMenuItem;
    mbDisconnect: TMenuItem;
    mbRefreshConnection: TMenuItem;
    N4: TMenuItem;
    mbClose: TMenuItem;
    ADOConnection: TADOConnection;
    GroupBox1: TGroupBox;
    eDate: TEdit;
    eTime: TEdit;
    GroupBox2: TGroupBox;
    PopupMenuEDate: TPopupMenu;
    pmAddDate: TMenuItem;
    PopupMenuETime: TPopupMenu;
    pmAddTime: TMenuItem;
    N3: TMenuItem;
    pmAutoUpdateTime: TMenuItem;
    eNPK: TEdit;
    PopupMenueENAuditorii: TPopupMenu;
    pmAddingAuditorii: TMenuItem;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    eFIO: TEdit;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar1: TToolBar;
    eError: TMemo;
    DataSourceErrors: TDataSource;
    PopupMenuEWorkType: TPopupMenu;
    PopupMenuESoftType: TPopupMenu;
    pmAddingWorkType: TMenuItem;
    pmAddingSoftType: TMenuItem;
    DataSourceMain: TDataSource;
    StatusBar: TStatusBar;
    PanelView: TPanel;
    Panel3: TPanel;
    DBGridTableMain: TDBGrid;
    bAddingData: TButton;
    Label5: TLabel;
    PopupMenuMain: TPopupMenu;
    pmModifyData: TMenuItem;
    pmAddData: TMenuItem;
    SQLAddingData: TADOQuery;
    N5: TMenuItem;
    pmAddingError: TMenuItem;
    pmDelitingError: TMenuItem;
    ToolButton1: TToolButton;
    tbConnection: TToolButton;
    DataSourceAddingData: TDataSource;
    N8: TMenuItem;
    pmDeleteData: TMenuItem;
    eWorkType: TComboBox;
    eSoftType: TComboBox;
    eNAuditorii: TComboBox;
    mbEditing: TMenuItem;
    Help1: TMenuItem;
    mbAddData: TMenuItem;
    mbModifyData: TMenuItem;
    N15: TMenuItem;
    mbAddingError: TMenuItem;
    N17: TMenuItem;
    mbDelitingError: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    mbAbout: TMenuItem;
    ImageList: TImageList;
    mbAddingData: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N36: TMenuItem;
    N39: TMenuItem;
    tbDisconnection: TToolButton;
    ToolButton4: TToolButton;
    tbAddData: TToolButton;
    tbDeleteData: TToolButton;
    ToolButton7: TToolButton;
    tbAddError: TToolButton;
    tbDeleteError: TToolButton;
    N10: TMenuItem;
    mbAutoUpdateTime: TMenuItem;
    mbAddDate: TMenuItem;
    N42: TMenuItem;
    mbAddTime: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    ToolBar2: TToolBar;
    tbAddDate: TToolButton;
    ToolButton11: TToolButton;
    tbAddTime: TToolButton;
    tbAutoInsert: TToolButton;
    ToolButton14: TToolButton;
    PopupMenuAutoInsert: TPopupMenu;
    pmAddAutoData: TMenuItem;
    N48: TMenuItem;
    pmModifyAutoData: TMenuItem;
    mbAddAutoData: TMenuItem;
    N49: TMenuItem;
    mbModifyAutoData: TMenuItem;
    pmAddAutoNAuditorii: TMenuItem;
    pmAddAutoWorkType: TMenuItem;
    pmAddAutoSoftType: TMenuItem;
    pmAddAutoSpecialnoct: TMenuItem;
    eSpecialnoct: TComboBox;
    PopupMenuSpecialnoct: TPopupMenu;
    MenuItem1: TMenuItem;
    TableSpecialnoct: TADOTable;
    N1: TMenuItem;
    pmAddAll: TMenuItem;
    N2: TMenuItem;
    mbOptions: TMenuItem;
    bModifyData: TButton;
    N6: TMenuItem;
    mbOutData: TMenuItem;
    N7: TMenuItem;
    OpenDialog: TOpenDialog;
    N9: TMenuItem;
    N11: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimeTimerTimer(Sender: TObject);
    procedure mbConnectClick(Sender: TObject);
    procedure mbDisconnectClick(Sender: TObject);
    procedure mbRefreshConnectionClick(Sender: TObject);
    procedure mbCloseClick(Sender: TObject);
    procedure pmAutoUpdateTimeClick(Sender: TObject);
    procedure pmAddDateClick(Sender: TObject);
    procedure pmAddTimeClick(Sender: TObject);
    procedure bAddingDataClick(Sender: TObject);
    procedure DBGridTableMainEnter(Sender: TObject);
    procedure DBGridTableMainExit(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pmAddDataClick(Sender: TObject);
    procedure pmModifyDataClick(Sender: TObject);
    procedure pmAddingErrorClick(Sender: TObject);
    procedure pmDelitingErrorClick(Sender: TObject);
    procedure PopupMenuMainPopup(Sender: TObject);
    procedure pmDeleteDataClick(Sender: TObject);
    procedure TableMainAfterScroll(DataSet: TDataSet);
    procedure TableAuditoriiAfterOpen(DataSet: TDataSet);
    procedure TableWorkTypeAfterOpen(DataSet: TDataSet);
    procedure TableSoftTypeAfterOpen(DataSet: TDataSet);
    procedure pmAddingAuditoriiClick(Sender: TObject);
    procedure pmAddingWorkTypeClick(Sender: TObject);
    procedure pmAddingSoftTypeClick(Sender: TObject);
    procedure tbAutoInsertClick(Sender: TObject);
    procedure pmAddAutoDataClick(Sender: TObject);
    procedure pmModifyAutoDataClick(Sender: TObject);
    procedure mbHelp(Sender: TObject);
    procedure mbAboutClick(Sender: TObject);
    procedure pmAddAutoWorkTypeClick(Sender: TObject);
    procedure pmAddAutoSoftTypeClick(Sender: TObject);
    procedure pmAddAutoSpecialnoctClick(Sender: TObject);
    procedure pmAddAutoNAuditoriiClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TableSpecialnoctAfterOpen(DataSet: TDataSet);
    procedure DBGridTableMainTitleClick(Column: TColumn);
    procedure mbOptionsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TableMainAfterOpen(DataSet: TDataSet);
    procedure mbOutDataClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
    procedure Connect;           // Соединяемся с БД
    procedure Disconnect;        // Разсоединяемся с БД
    procedure RefreshConnection; // Обновляемсоединение с БД
    procedure WriteData;         // Показ содержимого записи БД в Edit-ах
    procedure WriteIni;          // Запись ini-файла
    procedure ReadIni;           // Чтение ini-файла
    function  CreateSortMany: string; // Создание строки-сортировки
    procedure CreateFilter;      // Создание фильтра отображения данных
    // Проверяет наличие указанного значения в Таблице-справочнике
    function  IsValueInSpravka(stTableName: string; stValue: string): boolean;
    // Возвращает название поля по названию таблицы
    function  FieldName(stTableName: string): string;
  public
    { Public declarations }
    function  IsNoErrorInDB: boolean; // Проверка наличия записи о неполадке в журнале
    // Добавление нового значения в Таблицу-справочник
    procedure AddSpravka(stTableName: string; stValue: string);
  end;

const
  stIniFileName = 'MashineTime.ini';

var
  stDataBaseName: string;

  FMainForm: TFMainForm;
  bTableEnter: boolean;
  bTableModify: boolean;
  bIspmAutoUpdateTime: boolean;
  // значения по-умолчанию
  stNAuditorii: string = '';
  stWorkType: string = '';
  stSoftType: string = '';
  stSpecialnoct: string = '';
  bAddNAuditorii: boolean = false;
  bAddWorkType: boolean = false;
  bAddSoftType: boolean = false;
  bAddSpecialnost: boolean = false;
  // Для сортировки
  stSort: string;
  stASC: string;
  stSortMany: string;
    // сортировка по нескольким полям
    bNpp             : boolean;
    bDateTime        : boolean;
    bNAuditorii      : boolean;
    bNPK             : boolean;
    bSpecialnoct     : boolean;
    bFIO             : boolean;
    bWorkType        : boolean;
    bSoftType        : boolean;
    bNppIsASC        : boolean;
    bDateTimeIsASC   : boolean;
    bNAuditoriiIsASC : boolean;
    bNPKIsASC        : boolean;
    bSpecialnoctIsASC: boolean;
    bFIOIsASC        : boolean;
    bWorkTypeIsASC   : boolean;
    bSoftTypeIsASC   : boolean;
  // Настройки:
    // фильтр
    bViewOnlyAuditorii  : boolean;
    bNotViewAniAuditorii: boolean;
    stOnlyAuditorii     : string;
    // сортировка
    bSortOne            : boolean;
    bSortMany           : boolean;
    // автоматическое добавление данных
    bAutoTime           : boolean;
    bAddAutoData        : boolean;

implementation

uses UPassword, UAddingError, UDeleteData, UModifyData, UAddingData,
  UAddAutoData, UAbout, UOptions, UOutDatas;

{$R *.dfm}

//******************************************************************************
// При создании формы:
procedure TFMainForm.FormCreate(Sender: TObject);
var
  dtDateTime : TDateTime;
begin
  // записуем в StatusBar дату и время
  dtDateTime:= Date;
  StatusBar.Panels[0].Text:=DateToStr(dtDateTime);
  dtDateTime:= Time;
  StatusBar.Panels[1].Text:=TimeToStr(dtDateTime);

  // включаем таймер для отображения времени
  TimeTimer.Enabled:=true;

  Application.OnHint  := ShowHint;
  Application.ShowHint:= true;

  // Считуем ini-файл
  ReadIni;
end;

//******************************************************************************
// При закрытии форомы:
procedure TFMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // отключаем таймер
  TimeTimer.Enabled:=false;

  // записываем ini-файл
  WriteIni;

  // отсоединяемся от БД
  Disconnect;
end;

//******************************************************************************
// Отображаем Hint-ы в StatusBar-е
procedure TFMainForm.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
    StatusBar.Panels[4].Text:= Application.Hint
  else
    StatusBar.Panels[4].Text:= '';
end;

//******************************************************************************
// Ограничиваем min размеры формы
procedure TFMainForm.FormResize(Sender: TObject);
begin
  if (ClientWidth<761) then ClientWidth:=761;
  if (ClientHeight<438) then ClientHeight:=438;
end;

//******************************************************************************
// Возвращает название поля по названию таблицы
function  TFMainForm.FieldName(stTableName: string): string;
var
  stField: string;
begin
  if (stTableName = 'Аудитории') then stField:='№ аудитории' else
  if (stTableName = 'Вид работы') then stField:='вид работы' else
  if (stTableName = 'Программы') then stField:='назвавние программы' else
  if (stTableName = 'Специальность') then stField:='специальность';

  FieldName:= stField;
end;

//******************************************************************************
// Проверяет наличие указанного значения в Таблице-справочнике
function TFMainForm.IsValueInSpravka(stTableName: string; stValue: string): boolean;
var
  bReturn: boolean;
begin
  SQLAddingData.Close;

  with (SQLAddingData.SQL) do begin
    Clear;
    Add('SELECT *');
    Add('FROM ['+stTableName+']');
    if (stTableName='Аудитории')then
      Add('WHERE ['+stTableName+'].['+FieldName(stTableName)+'] = '+stValue+';')
    else
      Add('WHERE ['+stTableName+'].['+FieldName(stTableName)+'] = '+''''+stValue+''''+';');
  end;
  SQLAddingData.ExecSQL;
  SQLAddingData.Open;

  bReturn:=not SQLAddingData.IsEmpty;
  IsValueInSpravka:=bReturn;
end;

//******************************************************************************
// Добавление нового значения в Таблицу-справочник
procedure TFMainForm.AddSpravka(stTableName: string; stValue: string);
begin
  FMainForm.SQLAddingData.Close;
  with (FMainForm.SQLAddingData.SQL) do begin
    Clear;
    Add('INSERT INTO ['+stTableName+'](['+FieldName(stTableName)+'])');
    Add('VALUES');
    Add('(');
    Add(''''+stValue+'''');
    Add(');');
  end;
  FMainForm.SQLAddingData.ExecSQL;

  if (stTableName = 'Аудитории') then begin
    FMainForm.TableAuditorii.Close;
    FMainForm.TableAuditorii.Open;
  end;
  if (stTableName = 'Вид работы') then begin
    FMainForm.TableWorkType.Close;
    FMainForm.TableWorkType.Open;
  end;
  if (stTableName = 'Программы') then begin
    FMainForm.TableSoftType.Close;
    FMainForm.TableSoftType.Open;
  end;
  if (stTableName = 'Специальность') then begin
    FMainForm.TableSpecialnoct.Close;
    FMainForm.TableSpecialnoct.Open;
  end;
end;

//******************************************************************************
// Считываем ini-файл
procedure TFMainForm.ReadIni;
var
  IniFile : TextFile;
  stStroka: string;
  function GetString:string;
  var
    iStart: integer;
    iEnd: integer;
  begin
    iStart:=pos('"',stStroka)+1;
    iEnd:=pos('";',stStroka);
    GetString:=copy(stStroka,iStart,iEnd-iStart);
  end;
  function GetBoolean:boolean;
  var
    iStart: integer;
    iEnd: integer;
  begin
    iStart:=pos('"',stStroka)+1;
    iEnd:=pos('";',stStroka);
    GetBoolean:=StrToBool(copy(stStroka,iStart,iEnd-iStart));
  end;
begin
  AssignFile(IniFile, stIniFileName);
    Reset(IniFile);
    while (not eof(IniFile)) do begin
      readln(IniFile,stStroka);
        if (pos('stDataBaseName =',stStroka)>0) then stDataBaseName:= GetString;
        // Значения по-умолчанию
          if (pos('stNAuditorii =',stStroka)>0) then stNAuditorii:= GetString;
          if (pos('stWorkType =',stStroka)>0) then stWorkType:= GetString;
          if (pos('stSoftType =',stStroka)>0) then stSoftType:= GetString;
          if (pos('stSpecialnoct =',stStroka)>0) then stSpecialnoct:= GetString;
          if (pos('bAddNAuditorii =',stStroka)>0) then bAddNAuditorii:= GetBoolean;
          if (pos('bAddWorkType =',stStroka)>0) then bAddWorkType:= GetBoolean;
          if (pos('bAddSoftType =',stStroka)>0) then bAddSoftType:= GetBoolean;
          if (pos('bAddSpecialnost =',stStroka)>0) then bAddSpecialnost:= GetBoolean;
        // Настройки:
          // фильтр
          if (pos('bViewOnlyAuditorii =',stStroka)>0) then bViewOnlyAuditorii:=GetBoolean;
          if (pos('bNotViewAniAuditorii =',stStroka)>0) then bNotViewAniAuditorii:=GetBoolean;
          if (pos('stOnlyAuditorii =',stStroka)>0) then stOnlyAuditorii:=GetString;
          // сортировка
          if (pos('bSortOne =',stStroka)>0) then bSortOne:=GetBoolean;
          if (pos('bSortMany =',stStroka)>0) then bSortMany:=GetBoolean;
            // сортировка по нескольким полям
            if (pos('bNpp =',stStroka)>0) then bNpp:=GetBoolean;
            if (pos('bDateTime =',stStroka)>0) then bDateTime:=GetBoolean;
            if (pos('bNAuditorii =',stStroka)>0) then bNAuditorii:=GetBoolean;
            if (pos('bNPK =',stStroka)>0) then bNPK:=GetBoolean;
            if (pos('bSpecialnoct =',stStroka)>0) then bSpecialnoct:=GetBoolean;
            if (pos('bFIO =',stStroka)>0) then bFIO:=GetBoolean;
            if (pos('bWorkType =',stStroka)>0) then bWorkType:=GetBoolean;
            if (pos('bSoftType =',stStroka)>0) then bSoftType:=GetBoolean;
            if (pos('bNppIsASC =',stStroka)>0) then bNppIsASC:=GetBoolean;
            if (pos('bDateTimeIsASC =',stStroka)>0) then bDateTimeIsASC:=GetBoolean;
            if (pos('bNAuditoriiIsASC =',stStroka)>0) then bNAuditoriiIsASC:=GetBoolean;
            if (pos('bNPKIsASC =',stStroka)>0) then bNPKIsASC:=GetBoolean;
            if (pos('bSpecialnoctIsASC =',stStroka)>0) then bSpecialnoctIsASC:=GetBoolean;
            if (pos('bFIOIsASC =',stStroka)>0) then bFIOIsASC:=GetBoolean;
            if (pos('bWorkTypeIsASC =',stStroka)>0) then bWorkTypeIsASC:=GetBoolean;
            if (pos('bSoftTypeIsASC =',stStroka)>0) then bSoftTypeIsASC:=GetBoolean;
          // автоматическое добавление данных
          if (pos('bAutoTime =',stStroka)>0) then bAutoTime:=GetBoolean;
          if (pos('bAddAutoData =',stStroka)>0) then bAddAutoData:=GetBoolean;
    end;
  CloseFile(IniFile);
end;

//******************************************************************************
// Записываем ini-файл
procedure TFMainForm.WriteIni;
var
  IniFile: TextFile;
begin
  AssignFile(IniFile,stIniFileName);
    Rewrite(IniFile);
      writeln(IniFile,'[MashineTime]');
      writeln(IniFile,'stDataBaseName = "',stDataBaseName,'";');
      // Значения по-умолчанию
      writeln(IniFile,'');
      writeln(IniFile,'[AutoData]');
        writeln(IniFile,'stNAuditorii = "',stNAuditorii,'";');
        writeln(IniFile,'stWorkType = "',stWorkType,'";');
        writeln(IniFile,'stSoftType = "',stSoftType,'";');
        writeln(IniFile,'stSpecialnoct = "',stSpecialnoct,'";');
        writeln(IniFile,'bAddNAuditorii = "',bAddNAuditorii,'";');
        writeln(IniFile,'bAddWorkType = "',bAddWorkType,'";');
        writeln(IniFile,'bAddSoftType = "',bAddSoftType,'";');
        writeln(IniFile,'bAddSpecialnost = "',bAddSpecialnost,'";');
      // Настройки:
      writeln(IniFile,'');
      writeln(IniFile,'[Options]');
        // фильтр
        writeln(IniFile,'bViewOnlyAuditorii = "',bViewOnlyAuditorii,'";');
        writeln(IniFile,'bNotViewAniAuditorii = "',bNotViewAniAuditorii,'";');
        writeln(IniFile,'stOnlyAuditorii = "',stOnlyAuditorii,'";');
        // сортировка
        writeln(IniFile,'[Sort]');
        writeln(IniFile,'bSortOne = "',bSortOne,'";');
        writeln(IniFile,'bSortMany = "',bSortMany,'";');
          // сортировка по нескольким значениям
          writeln(IniFile,'[SortMany]');
          writeln(IniFile,'bNpp = "',bNpp,'";');
          writeln(IniFile,'bDateTime = "',bDateTime,'";');
          writeln(IniFile,'bNAuditorii = "',bNAuditorii,'";');
          writeln(IniFile,'bNPK = "',bNPK,'";');
          writeln(IniFile,'bSpecialnoct = "',bSpecialnoct,'";');
          writeln(IniFile,'bFIO = "',bFIO,'";');
          writeln(IniFile,'bWorkType = "',bWorkType,'";');
          writeln(IniFile,'bSoftType = "',bSoftType,'";');
          writeln(IniFile,'bNppIsASC = "',bNppIsASC,'";');
          writeln(IniFile,'bDateTimeIsASC = "',bDateTimeIsASC,'";');
          writeln(IniFile,'bNAuditoriiIsASC = "',bNAuditoriiIsASC,'";');
          writeln(IniFile,'bNPKIsASC = "',bNPKIsASC,'";');
          writeln(IniFile,'bSpecialnoctIsASC = "',bSpecialnoctIsASC,'";');
          writeln(IniFile,'bFIOIsASC = "',bFIOIsASC,'";');
          writeln(IniFile,'bWorkTypeIsASC = "',bWorkTypeIsASC,'";');
          writeln(IniFile,'bSoftTypeIsASC = "',bSoftTypeIsASC,'";');
        // автоматическое добавление данных
        writeln(IniFile,'bAutoTime = "',bAutoTime,'";');
        writeln(IniFile,'bAddAutoData = "',bAddAutoData,'";');
  CloseFile(IniFile);
end;

//******************************************************************************
// Обработка тика таймера TimeTimer:
// + для вывода времени в StatusBar
// + для записи времени в eTime
procedure TFMainForm.TimeTimerTimer(Sender: TObject);
var
  dtTime: TDateTime;
begin
  dtTime:= Time;

  // вывод времени в StatusBar
  StatusBar.Panels[1].Text:=TimeToStr(dtTime);

  // запись времени в eTime
  if (pmAutoUpdateTime.Checked) then 
    eTime.Text:=StatusBar.Panels[1].Text;
end;

//******************************************************************************
// Соединяемся с БД:
procedure TFMainForm.Connect;
begin
  // устанавливаем соедине с БД
  if (not ADOConnection.Connected) then FPasswordForm.ShowModal;

  // в случае удачного соединения
  if (ADOConnection.Connected) then begin
    // информируем о соединении в StatusBar-е
    FMainForm.StatusBar.Panels[2].Text:='Connection';
    FMainForm.StatusBar.Panels[3].Text:='Добавление данных';
    // открываем таблицы БД
    if (not TableMain.Active) then TableMain.Open;
    if (not TableAuditorii.Active) then TableAuditorii.Open;
    if (not TableWorkType.Active) then TableWorkType.Open;
    if (not TableSoftType.Active) then TableSoftType.Open;
    if (not TableErrors.Active) then TableErrors.Open;
    if (not TableSpecialnoct.Active) then TableSpecialnoct.Open;

    eDate.Text:=StatusBar.Panels[0].Text;
    eTime.Text:=StatusBar.Panels[1].Text;

    // меняем Visible-ы
    PanelEdit.Visible:= true;
    PanelView.Visible:= true;
    // меняем Enable-ы
    mbConnect.Enabled          := false;
    mbDisconnect.Enabled       := true;
    mbRefreshConnection.Enabled:= true;
    mbEditing.Enabled          := true;
    mbAddDate.Enabled          := true;
    mbAddTime.Enabled          := true;
    mbAutoUpdateTime.Enabled   := true;
    mbOutdata.Enabled          := true;

    tbConnection.Enabled:= false;
    tbDisconnection.Enabled:= true;
    tbAddData.Enabled:= true;
    tbDeleteData.Enabled:= true;
    tbAddError.Enabled:= true;
    tbDeleteError.Enabled:= false;
    tbAddDate.Enabled:= true;
    tbAddTime.Enabled:= true;
    pmAddAutoData.Enabled:= true;
  end;

end;

//******************************************************************************
// Разсоединяемся с БД
procedure TFMainForm.Disconnect;
begin
  // закрываем открытые таблицы
  if (TableMain.Active) then TableMain.Close;
  if (TableAuditorii.Active) then TableAuditorii.Close;
  if (TableWorkType.Active) then TableWorkType.Close;
  if (TableSoftType.Active) then TableSoftType.Close;
  if (TableErrors.Active) then TableErrors.Close;
  if (TableSpecialnoct.Active) then TableSpecialnoct.Close;

  // разсоединяемся с БД
  if (ADOConnection.Connected) then ADOConnection.Close;

  FMainForm.StatusBar.Panels[2].Text:='Disonnection';
  FMainForm.StatusBar.Panels[3].Text:='';

  bTableEnter:=false;
  bTableModify:=false;

  // меняем Visible-ы
  PanelEdit.Visible:=false;
  PanelView.Visible:= false;
  // меняем Enable-ы
  mbConnect.Enabled          := false;
  mbDisconnect.Enabled       := false;
  mbRefreshConnection.Enabled:= false;
  mbEditing.Enabled          := false;
  mbAddDate.Enabled          := false;
  mbAddTime.Enabled          := false;
  mbAutoUpdateTime.Enabled   := false;
  mbOutData.Enabled          := false;

  tbConnection.Enabled:= true;
  tbDisconnection.Enabled:= false;
  tbAddData.Enabled:= false;
  tbDeleteData.Enabled:= false;
  tbAddError.Enabled:= false;
  tbDeleteError.Enabled:= false;
  tbAddDate.Enabled:= false;
  tbAddTime.Enabled:= false;
  pmAddAutoData.Enabled:= false;
end;

//******************************************************************************
// Обновляемсоединение с БД - разсоединяемся, а затем снова соединяемся с БД
procedure TFMainForm.RefreshConnection;
begin
  Disconnect;
  Connect;
end;

//******************************************************************************
// Проверка наличия записи о неполадке в журнале
function TFMainForm.IsNoErrorInDB: boolean;
var
  ReturnValue: boolean;
begin
  SQLAddingData.Close;
  with (SQLAddingData.SQL) do begin
    Clear;
    Add('SELECT *');
    Add('FROM Неполадки');
    Add('WHERE Неполадки.[№ записи в Журнале] = '+TableMain.FieldByName('№ п/п').AsString+';');
  end;
  FMainForm.SQLAddingData.ExecSQL;
  FMainForm.SQLAddingData.Open;

  ReturnValue:= SQLAddingData.IsEmpty;
  IsNoErrorInDB:= ReturnValue;
end;

//******************************************************************************
// Показ содержимого записи БД в Edit-ах
procedure TFMainForm.WriteData;
var
  dtDateTime: TDateTime;
begin
  if (TableMain.Active) then
    if (bTableEnter) then begin
      dtDateTime:=TableMain.FieldByName('дата и время').AsDateTime;
      eDate.Text:=DateToStr(dtDateTime);
      eTime.Text:=TimeToStr(dtDateTime);
      eNAuditorii.Text:=TableMain.FieldByName('№ аудитории').AsString;
      eNPK.Text:=TableMain.FieldByName('№ ПК').AsString;
      eSpecialnoct.Text:=TableMain.FieldByName('специальность').AsString;
      eFIO.Text:=TableMain.FieldByName('ФИО').AsString;
      eWorkType.Text:=TableMain.FieldByName('вид работы').AsString;
      eSoftType.Text:=TableMain.FieldByName('работа в программах').AsString;

      // отображаем содержимое Неполадки, если запись в БД уже существеут
      // определяем наличие записи в БД
      eError.Lines.Clear;
      if (not IsNoErrorInDB) then begin
        // отображаем одержимое Неполадки
        FMainForm.SQLAddingData.First;
        eError.Text:=FMainForm.SQLAddingData.FieldByName('Описание неполадки').AsString;
        tbDeleteError.Enabled:=true;
      end
      else
          tbDeleteError.Enabled:=false;
    end;
end;
//******************************************************************************
// Обработка MainMenu
procedure TFMainForm.mbConnectClick(Sender: TObject);
begin
  ADOConnection.ConnectionString:=
  'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
  stDataBaseName+
  ';Mode=ReadWrite;Persist Security Info=False';
  Connect;
end;

procedure TFMainForm.mbDisconnectClick(Sender: TObject);
begin
  Disconnect;
end;

procedure TFMainForm.mbRefreshConnectionClick(Sender: TObject);
begin
  RefreshConnection;
end;

procedure TFMainForm.mbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFMainForm.pmAutoUpdateTimeClick(Sender: TObject);
begin
  pmAutoUpdateTime.Checked:=not pmAutoUpdateTime.Checked;
  mbAutoUpdateTime.Checked:=not mbAutoUpdateTime.Checked;
end;

procedure TFMainForm.pmAddDateClick(Sender: TObject);
var
  dtDate: TDateTime;
begin
  dtDate:= Date;
  eDate.Text:= DateToStr(dtDate);
end;

procedure TFMainForm.pmAddTimeClick(Sender: TObject);
var
  dtTime: TDateTime;
begin
  dtTime:= Time;
  eTime.Text:= TimeToStr(dtTime);
end;

//******************************************************************************
// Добавление записи в TableMain
procedure TFMainForm.bAddingDataClick(Sender: TObject);
var
  bIsOk: boolean;
  Answer: integer;
  stTemp: string;
begin
// Проверяем данные,
// и добавляем к ним значения по умолчанию, если поля пустые
  bIsOk:= true;

  // дата и время
  if (bIsOk) then begin
    if (Length(eDate.Text)=0) then pmAddDate.Click;
    if (Length(eTime.Text)=0) then pmAddTime.Click;
  end;
  // № аудитории
  if (bIsOk) then begin
    if (Length(eNAuditorii.Text)=0) then
      if (bAddNAuditorii) then
        pmAddAutoNAuditorii.Click;
    if (Length(eNAuditorii.Text)=0) then begin
      bIsOk:=false;
      MessageBox
      (
        Handle,
        'Значение поля '+'"№ аудитории"'+' не может быть пустым!',
        'Внимание',
        MB_OK + MB_ICONINFORMATION
      );
    end;
  end;
  // № ПК
  if (bIsOk) then begin
    if (Length(eNPK.Text)=0) then begin
      bIsOk:=false;
      MessageBox
      (
        Handle,
        'Значение поля '+'"№ ПК"'+' не может быть пустым!',
        'Внимание',
        MB_OK + MB_ICONINFORMATION
      );
    end;
  end;
  // специальность
  if (bIsOk) then begin
    if (Length(eSpecialnoct.Text)=0) then
      if (bAddSpecialnost) then
        pmAddAutoSpecialnoct.Click;
    if (Length(eSpecialnoct.Text)=0) then begin
      bIsOk:=false;
      MessageBox
      (
        Handle,
        'Значение поля '+'"Специальность"'+' не может быть пустым!',
        'Внимание',
        MB_OK + MB_ICONINFORMATION
      );
    end;
  end;
  // ФИО
  if (bIsOk) then begin
    if (Length(eFIO.Text)=0) then begin
      bIsOk:=false;
      MessageBox
      (
        Handle,
        'Значение поля '+'"ФИО"'+' не может быть пустым!',
        'Внимание',
        MB_OK + MB_ICONINFORMATION
      );
    end;
  end;
  // вид работы
  if (bIsOk) then begin
    if (Length(eWorkType.Text)=0) then
      if (bAddWorkType) then
        pmAddAutoWorkType.Click;
  end;
  // работа в программах
  if (bIsOk) then begin
    if (Length(eSoftType.Text)=0) then
      if (bAddSoftType) then
        pmAddAutoSoftType.Click;
  end;

// Если записи в eNAuditorii, eWorkType, eSoftType, eSpecialnoct новые -
// предлагаем добавить их значения в БД

// проверяем eNAuditorii
if (bIsOk) then
  if (not IsValueInSpravka('Аудитории',eNAuditorii.Text)) then begin
    Answer:=MessageBox
            (
              Handle,
              'Записи "№ аудитории" нет в БД. Хотите добавить ее?',
              'Добавление новой записи в справочник',
              MB_OKCANCEL + MB_ICONQUESTION
            );
    bIsOk:=(Answer=IDOK);
    if (bIsOk) then begin
      stTemp:=eNAuditorii.Text;
      AddSpravka('Аудитории',stTemp);
      eNAuditorii.Text:=stTemp;
    end;
  end;
// проверяем eWorkType
if (bIsOk) then 
  if (not IsValueInSpravka('Вид работы',eWorkType.Text)) then begin
    Answer:=MessageBox
            (
              Handle,
              'Записи "Вид работы" нет в БД. Хотите добавить ее?',
              'Добавление новой записи в справочник',
              MB_OKCANCEL + MB_ICONQUESTION
            );
    bIsOk:=(Answer=IDOK);
    if (bIsOk) then begin
      stTemp:=eWorkType.Text;
      AddSpravka('Вид работы',stTemp);
      eWorkType.Text:=stTemp;
    end;
  end;
// проверяем eSoftType
if (bIsOk) then
  if (not IsValueInSpravka('Программы',eSoftType.Text)) then begin
    Answer:=MessageBox
            (
              Handle,
              'Записи "Работа в программах" нет в БД. Хотите добавить ее?',
              'Добавление новой записи в справочник',
              MB_OKCANCEL + MB_ICONQUESTION
            );
    bIsOk:=(Answer=IDOK);
    if (bIsOk) then begin
      stTemp:=eSoftType.Text;
      AddSpravka('Программы',stTemp);
      eSoftType.Text:=stTemp;
    end;
  end;
// проверяем eSpecialnoct
if (bIsOk) then
  if (not IsValueInSpravka('Специальность',eSpecialnoct.Text)) then begin
    Answer:=MessageBox
            (
              Handle,
              'Записи "Специальность" нет в БД. Хотите добавить ее?',
              'Добавление новой записи в справочник',
              MB_OKCANCEL + MB_ICONQUESTION
            );
    bIsOk:=(Answer=IDOK);
    if (bIsOk) then begin
      stTemp:=eSpecialnoct.Text;
      AddSpravka('Специальность',stTemp);
      eSpecialnoct.Text:=stTemp;
    end;
  end;

if (bIsOk) then
  if (not bTableModify) then begin
    // добавляем данные в TableMain
    SQLAddingData.Close;
    // добавляем данные в SQL запрос
    with (SQLAddingData.SQL) do begin
      Clear;
      Add('INSERT INTO Журнал([дата и время], [№ аудитории], [№ ПК], [специальность], [ФИО], [вид работы], [работа в программах])');
      Add('VALUES');
      Add('(');
      Add(''''+eDate.Text+' '+eTime.Text+''','); // дата и время
      Add(''''+eNAuditorii.Text+''',');          // № аудитории
      Add(''''+eNPK.Text+''',');                 // № ПК
      Add(''''+eSpecialnoct.Text+''',');         // специальность
      Add(''''+eFIO.Text+''',');                 // ФИО
      Add(''''+eWorkType.Text+''',');            // вид работы
      Add(''''+eSoftType.Text+'''');             // работа в программах
      Add(');');
    end;
    // выполняем запрос, тем самым добавив данные в БД
    SQLAddingData.ExecSQL;
    // обновляем TableMain ( Refresh не работает :( )
    TableMain.Close;
    TableMain.Open;

    // добавляем запись в eError, если нужно
    if (Length(eError.Text)>0) then begin
      // переходим в последнюю запись TableName, чтобы узнать "№ записи в Журнале"
      TableMain.Last;
      SQLAddingData.Close;
      // добавляем данные в SQL запрос
      with (SQLAddingData.SQL) do begin
        Clear;
        Add('INSERT INTO Неполадки([№ записи в Журнале],[Описание неполадки])');
        Add('VALUES');
        Add('(');
        Add(''''+TableMain.FieldByName('№ п/п').AsString+''','); // № записи в Журнале
        Add(''''+eError.Text+'''');                              // Описание неполадки
        Add(');');
      end;
      // выполняем запрос, тем самым добавив данные в таблицу "Неполадки"
      SQLAddingData.ExecSQL;
      // обновляем TableErrors ( Refresh не работает :( )
      TableErrors.Close;
      TableErrors.Open;
    end;
  end
  // изменяем данные в БД
  else
    FModifyData.ShowModal
else
  MessageBox
  (
    Handle,
    'Данные не были добавлены в БД!',
    'Внимание',
    MB_OK + MB_ICONINFORMATION
   );
end;

//******************************************************************************
// Пользователь вошел в режим просмотра/редактирования данных
procedure TFMainForm.DBGridTableMainEnter(Sender: TObject);
begin
  bTableEnter:= true;
  WriteData;
  if (not bTableModify) then
    bIspmAutoUpdateTime:= pmAutoUpdateTime.Checked;
  pmAutoUpdateTime.Checked:=false;
end;

// Пользователь выошел из режим просмотра данных
procedure TFMainForm.DBGridTableMainExit(Sender: TObject);
begin
  bTableEnter:= false;
  if (not bTableModify) then pmAutoUpdateTime.Checked:=bIspmAutoUpdateTime;
end;

// Пользователь вошол в режим редактирования данных в TableMain
procedure TFMainForm.pmModifyDataClick(Sender: TObject);
begin
  pmModifyData.Checked:= true;
  mbModifyData.Checked:= true;
  pmAddData.Checked:= false;
  mbAddData.Checked:= false;
  StatusBar.Panels[3].Text:='Редактирование данных';
  bTableModify:=true;
  bAddingData.Enabled:=false;
  bModifyData.Enabled:=true;
end;

// Пользователь вышел из режима редактирования данных в TableMain,
// и вошел в режим добавления данных в TableMain
procedure TFMainForm.pmAddDataClick(Sender: TObject);
begin
  pmAddData.Checked:= true;
  mbAddData.Checked:= true;
  pmModifyData.Checked:= false;
  mbModifyData.Checked:=false;
  StatusBar.Panels[3].Text:='Добавление данных';
  bTableModify:=false;
  bAddingData.Enabled:=true;
  bModifyData.Enabled:=false;
  pmAutoUpdateTime.Checked:=bIspmAutoUpdateTime;
end;

//******************************************************************************
// PopupMenuMain
procedure TFMainForm.PopupMenuMainPopup(Sender: TObject);
begin
  if ((bTableEnter) or (bTableModify)) then
    if (IsNoErrorInDB) then begin
      pmDelitingError.Enabled:=false;
      mbDelitingError.Enabled:=false;
      tbDeleteError.Enabled:=false;
    end
    else begin
      pmDelitingError.Enabled:=true;
      mbDelitingError.Enabled:=true;
      tbDeleteError.Enabled:=true;
    end;
end;

// Добавление данных о неполадке
procedure TFMainForm.pmAddingErrorClick(Sender: TObject);
begin
  FAddingErrorForm.ShowModal;
end;

// Удаление данных о неполадке
procedure TFMainForm.pmDelitingErrorClick(Sender: TObject);
var
  Answer: integer;
begin
  // запрашиваем подтверждение об удалении данных из таблицы "Неполадки"
  Answer:=MessageBox
          (
            Handle,
            'Вы действительно хотите удалить запись о неполадке?',
            'Удаление данных о неполадке',
            MB_OKCANCEL + MB_ICONQUESTION
          );
  // если подтверждение получено - удаляем данные из таблицы "Неполадки"
  if (Answer=IDOK) then begin
    SQLAddingData.Close;
    // формируем SQL запрос на удаление данных
    with (SQLAddingData.SQL) do begin
      Clear;
      Add('DELETE Неполадки.*');
      Add('FROM Неполадки');
      Add('WHERE Неполадки.[№ записи в Журнале] = '+TableMain.FieldByName('№ п/п').AsString);
    end;
    // выполняем запрос, тем самым удалив данные из таблицы "Неполадки"
    SQLAddingData.ExecSQL;
    // обновляем TableErrors ( Refresh не работает :( )
    TableErrors.Close;
    TableErrors.Open;

    eError.Text:='';
  end;
end;

procedure TFMainForm.pmDeleteDataClick(Sender: TObject);
begin
  FDeleteDataForm.ShowModal;
end;

procedure TFMainForm.TableMainAfterScroll(DataSet: TDataSet);
begin
  WriteData;
end;

procedure TFMainForm.TableAuditoriiAfterOpen(DataSet: TDataSet);
begin
  eNAuditorii.Items.Clear;
  TableAuditorii.First;
  while (not TableAuditorii.Eof) do begin
    eNAuditorii.Items.Add(TableAuditorii.FieldByName('№ аудитории').AsString);
    TableAuditorii.Next;
  end;
  eNAuditorii.ItemIndex:=0;
end;

procedure TFMainForm.TableWorkTypeAfterOpen(DataSet: TDataSet);
begin
  eWorkType.Items.Clear;
  TableWorkType.First;
  while (not TableWorkType.Eof) do begin
    eWorkType.Items.Add(TableWorkType.FieldByName('вид работы').AsString);
    TableWorkType.Next;
  end;
  eWorkType.ItemIndex:=0;
end;

procedure TFMainForm.TableSoftTypeAfterOpen(DataSet: TDataSet);
begin
  eSoftType.Items.Clear;
  TableSoftType.First;
  while (not TableSoftType.Eof) do begin
    eSoftType.Items.Add(TableSoftType.FieldByName('назвавние программы').AsString);
    TableSoftType.Next;
  end;
  eSoftType.ItemIndex:=0;
end;

procedure TFMainForm.TableSpecialnoctAfterOpen(DataSet: TDataSet);
begin
  eSpecialnoct.Items.Clear;
  TableSpecialnoct.First;
  while (not TableSpecialnoct.Eof) do begin
    eSpecialnoct.Items.Add(TableSpecialnoct.FieldByName('специальность').AsString);
    TableSpecialnoct.Next;
  end;
  eSpecialnoct.ItemIndex:=-1;
  eSpecialnoct.Text:='';
end;

procedure TFMainForm.pmAddingAuditoriiClick(Sender: TObject);
begin
  FAddingDataForm.Caption:='Аудитории';
  FAddingDataForm.ShowModal;
end;

procedure TFMainForm.pmAddingWorkTypeClick(Sender: TObject);
begin
  FAddingDataForm.Caption:='Вид работы';
  FAddingDataForm.ShowModal;
end;

procedure TFMainForm.pmAddingSoftTypeClick(Sender: TObject);
begin
  FAddingDataForm.Caption:='Программы';
  FAddingDataForm.ShowModal;
end;

procedure TFMainForm.MenuItem1Click(Sender: TObject);
begin
  FAddingDataForm.Caption:='Специальность';
  FAddingDataForm.ShowModal;
end;

procedure TFMainForm.tbAutoInsertClick(Sender: TObject);
var
  PosCursor: TPoint;
begin
  GetCursorPos(PosCursor);
  with (tbAutoInsert) do begin
    PopupMenu.Popup
    (
      PosCursor.X,
      PosCursor.Y
    );
  end;
end;

procedure TFMainForm.pmAddAutoDataClick(Sender: TObject);
begin
  if ((bAddNAuditorii)and(pmAddAutoNAuditorii.Enabled)) then pmAddAutoNAuditorii.Click;
  if ((bAddWorkType)and(pmAddAutoWorkType.Enabled)) then pmAddAutoWorkType.Click;
  if ((bAddSoftType)and(pmAddAutoSoftType.Enabled)) then pmAddAutoSoftType.Click;
  if ((bAddSpecialnost)and(pmAddAutoSpecialnoct.Enabled)) then pmAddAutoSpecialnoct.Click;
end;

procedure TFMainForm.pmModifyAutoDataClick(Sender: TObject);
begin
  FAddAutoDataForm.ShowModal;
end;

procedure TFMainForm.mbHelp(Sender: TObject);
begin
//
end;

procedure TFMainForm.mbAboutClick(Sender: TObject);
begin
  FAboutForm.ShowModal;
end;

procedure TFMainForm.pmAddAutoWorkTypeClick(Sender: TObject);
begin
  eWorkType.Text:=stWorkType;
end;

procedure TFMainForm.pmAddAutoSoftTypeClick(Sender: TObject);
begin
  eSoftType.Text:=stSoftType;
end;

procedure TFMainForm.pmAddAutoSpecialnoctClick(Sender: TObject);
begin
  eSpecialnoct.Text:=stSpecialnoct;
end;

procedure TFMainForm.pmAddAutoNAuditoriiClick(Sender: TObject);
begin
  eNAuditorii.Text:=stNAuditorii;
end;

//******************************************************************************
procedure TFMainForm.DBGridTableMainTitleClick(Column: TColumn);
var
  st: string;
begin
  if (stSort='['+Column.Title.Caption+']') then begin
    if (stASC='ASC') then stASC:='DESC'
                     else stASC:='ASC';
  end
  else begin
    stSort:='['+Column.Title.Caption+']';
    stASC:='ASC';
  end;

  if (bSortMany) then begin
    st:=CreateSortMany;
    if (Length(st)>0) then
      st:=stSort+' '+stASC+', '+st;
  end
  else
    st:=stSort+' '+stASC;

  TableMain.Sort:=st;
end;

//******************************************************************************
// Создание строки-сортировки
function  TFMainForm.CreateSortMany: string;
var
  stSortMany: string;
begin
  stSortMany:='';

  if (bNpp) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[№ п/п] ';
    if (bNppIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bDateTime) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[дата и время] ';
    if (bDateTimeIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bNAuditorii) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[№ аудитории] ';
    if (bNAuditoriiIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bNPK) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[№ ПК] ';
    if (bNPKIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bSpecialnoct) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[специальность] ';
    if (bSpecialnoctIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bFIO) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[ФИО] ';
    if (bFIOIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bWorkType) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[вид работы] ';
    if (bWorkTypeIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  if (bSoftType) then begin
    if (Length(stSortMany)>0) then
      stSortMany:=stSortMany+', ';
    stSortMany:=stSortMany+'[работа в программах] ';
    if (bSoftTypeIsASC) then
      stSortMany:=stSortMany+'ASC'
    else
      stSortMany:=stSortMany+'DESC';
  end;

  CreateSortMany:=stSortMany;
end;

//******************************************************************************
// Создание фильтра отображения данных
procedure TFMainForm.CreateFilter;
begin
  if (bViewOnlyAuditorii) then begin
    TableMain.Filter:='[№ аудитории] = '+stOnlyAuditorii;
    TableMain.Filtered:=true;
    eNAuditorii.Text:=stOnlyAuditorii;
    if (bNotViewAniAuditorii) then begin
      eNAuditorii.Text:=stOnlyAuditorii;
      eNAuditorii.Enabled:=not bNotViewAniAuditorii;
    end
  end
  else begin
    eNAuditorii.Enabled:=true;
    TableMain.Filtered:=false;
    TableMain.Filter:='';
  end;
end;

//******************************************************************************
procedure TFMainForm.mbOptionsClick(Sender: TObject);
begin
  FOptionsForm.ShowModal;
  if (bSortMany) then DBGridTableMainTitleClick(DBGridTableMain.Columns[0]);
  CreateFilter;
  pmAddTime.Checked:=bAutoTime;
end;

procedure TFMainForm.FormShow(Sender: TObject);
begin
  CreateFilter;
  CreateSortMany;
  pmAddTime.Checked:=bAutoTime;
end;

procedure TFMainForm.TableMainAfterOpen(DataSet: TDataSet);
begin
  DBGridTableMainTitleClick(DBGridTableMain.Columns[0]);
end;

procedure TFMainForm.mbOutDataClick(Sender: TObject);
begin
  FOutDatasForm.ShowModal;
end;

procedure TFMainForm.N11Click(Sender: TObject);
begin
  if (OpenDialog.Execute) then
    stDataBaseName:=OpenDialog.FileName;
  if (ADOConnection.Connected) then
    RefreshConnection;
end;

end.
