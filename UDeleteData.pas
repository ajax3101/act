unit UDeleteData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFDeleteDataForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bOk: TButton;
    bNo: TButton;
    Label7: TLabel;
    bCancel: TButton;
    Label8: TLabel;
    Label9: TLabel;
    lWorkType: TLabel;
    lTime: TLabel;
    lSpecialnost: TLabel;
    lSoftType: TLabel;
    lNpp: TLabel;
    lNPK: TLabel;
    lNAuditorii: TLabel;
    lFIO: TLabel;
    lDate: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bNoClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDeleteDataForm: TFDeleteDataForm;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFDeleteDataForm.FormShow(Sender: TObject);
var
  dtDateTime: TDateTime;
begin
  dtDateTime:=FMainForm.TableMain.FieldByName('дата и время').AsDateTime;
  lDate.Caption:=DateToStr(dtDateTime);
  lTime.Caption:=TimeToStr(dtDateTime);
  lNpp.Caption:=FMainForm.TableMain.FieldByName('№ п/п').AsString;
  lNAuditorii.Caption:=FMainForm.TableMain.FieldByName('№ аудитории').AsString;
  lNPK.Caption:=FMainForm.TableMain.FieldByName('№ ПК').AsString;
  lSpecialnost.Caption:=FMainForm.TableMain.FieldByName('специальность').AsString;
  lFIO.Caption:=FMainForm.TableMain.FieldByName('ФИО').AsString;
  lWorkType.Caption:=FMainForm.TableMain.FieldByName('вид работы').AsString;
  lSoftType.Caption:=FMainForm.TableMain.FieldByName('работа в программах').AsString;
end;

procedure TFDeleteDataForm.bNoClick(Sender: TObject);
begin
  Close;
end;

// Удаление данных из БД
procedure TFDeleteDataForm.bOkClick(Sender: TObject);
begin
  // удаляем связанную с записью "Неполадку", если она есть
  if (not FMainForm.IsNoErrorInDB) then begin
    FMainForm.SQLAddingData.Close;
    // формируем SQL запрос на удаление данных
    with (FMainForm.SQLAddingData.SQL) do begin
      Clear;
      Add('DELETE Неполадки.*');
      Add('FROM Неполадки');
      Add('WHERE Неполадки.[№ записи в Журнале] = '+lNpp.Caption);
    end;
    // выполняем запрос, тем самым удалив данные из таблицы "Неполадки"
    FMainForm.SQLAddingData.ExecSQL;
    // обновляем TableErrors ( Refresh не работает :( )
    FMainForm.TableErrors.Close;
    FMainForm.TableErrors.Open;
  end;
  // удаляем саму запись
  FMainForm.SQLAddingData.Close;
  with (FMainForm.SQLAddingData.SQL) do begin
    Clear;
    Add('DELETE Журнал.*');
    Add('FROM Журнал');
    Add('WHERE Журнал.[№ п/п] = '+lNpp.Caption);
  end;
  FMainForm.SQLAddingData.ExecSQL;
  FMainForm.TableMain.Close;
  FMainForm.TableMain.Open;
  Close;
end;

end.
