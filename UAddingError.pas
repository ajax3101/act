unit UAddingError;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TFAddingErrorForm = class(TForm)
    bAdding: TButton;
    bClose: TButton;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    eError: TMemo;
    procedure bCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bAddingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddingErrorForm: TFAddingErrorForm;
  bIsNoErrorInDB: boolean;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFAddingErrorForm.bCloseClick(Sender: TObject);
begin
  eError.ShowHint:=false;
  Close;
end;

procedure TFAddingErrorForm.FormShow(Sender: TObject);
var
  DateTime: TDateTime;
begin
  // создаем Hint о выбранной записи БД
  DateTime:=FMainForm.TableMain.FieldByName('дата и время').AsDateTime;
  eError.Hint:=
  'Дата:                  '+DateToStr(DateTime)+chr(13)+
  'время:                '+TimeToStr(DateTime)+chr(13)+
  '№ аудитории:     '+FMainForm.TableMain.FieldByName('№ аудитории').AsString+chr(13)+
  '№ ПК:                 '+FMainForm.TableMain.FieldByName('№ ПК').AsString+chr(13)+
  'специальность: '+FMainForm.TableMain.FieldByName('специальность').AsString+chr(13)+
  'ФИО:                  '+FMainForm.TableMain.FieldByName('ФИО').AsString;
  // отображаем Hint
  eError.ShowHint:=true;

  // отображаем содержимое Неполадки, если запись в БД уже существеут
  // определяем наличие записи в БД
  bIsNoErrorInDB:=FMainForm.IsNoErrorInDB;
  // отображаем одержимое Неполадки
  eError.Lines.Clear;
  if (not bIsNoErrorInDB) then begin
    FMainForm.SQLAddingData.First;
    eError.Text:=FMainForm.SQLAddingData.FieldByName('Описание неполадки').AsString;
  end;
end;

// Добавляем данные о неполадке
procedure TFAddingErrorForm.bAddingClick(Sender: TObject);
begin
  FMainForm.SQLAddingData.Close;
  // если записи о неполадке в БД нет
  if (bIsNoErrorInDB) then begin
    // если eError содержит запись о неполадке
    if (Length(eError.Text)>0) then begin
      // добавляем данные в БД
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('INSERT INTO Неполадки([№ записи в Журнале],[Описание неполадки])');
        Add('VALUES');
        Add('(');
        Add(''''+FMainForm.TableMain.FieldByName('№ п/п').AsString+''','); // № записи в Журнале
        Add(''''+eError.Text+'''');                                        // Описание неполадки
        Add(');');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end;
  end
  // если запись о неполадке в БД есть
  else begin
    // если eError содержит запись о неполадке
    if (Length(eError.Text)>0) then begin
      // изменяем данные
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('UPDATE Неполадки');
        Add('SET Неполадки.[Описание неполадки] = '+''''+eError.Text+'''');
        Add('WHERE Неполадки.[№ записи в Журнале] = '+FMainForm.TableMain.FieldByName('№ п/п').AsString+';');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end
    // если eError не содержит записи о неполадке
    else begin
      // предлагаем удалить запись о неполадке из БД
      FMainForm.pmDelitingError.Click;
    end;
  end;
  Close;
end;

end.
