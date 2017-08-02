unit UModifyData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFModifyData = class(TForm)
    GroupBox2: TGroupBox;
    lTimeNew: TLabel;
    lSpecialnostNew: TLabel;
    lNPKNew: TLabel;
    lNAuditoriiNew: TLabel;
    lFIONew: TLabel;
    lDateNew: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lDate: TLabel;
    lTime: TLabel;
    lNAuditorii: TLabel;
    lNPK: TLabel;
    lSpecialnost: TLabel;
    lFIO: TLabel;
    Label7: TLabel;
    lNpp: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lWorkType: TLabel;
    lSoftType: TLabel;
    bOk: TButton;
    bNo: TButton;
    bCancel: TButton;
    lSoftTypeNew: TLabel;
    lWorkTypeNew: TLabel;
    procedure bNoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModifyData: TFModifyData;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFModifyData.bNoClick(Sender: TObject);
begin
  Close;
end;

procedure TFModifyData.FormShow(Sender: TObject);
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

  lDateNew.Caption:=FMainForm.eDate.Text;
  lTimeNew.Caption:=FMainForm.eTime.Text;
  lNAuditoriiNew.Caption:=FMainForm.eNAuditorii.Text;
  lNPKNew.Caption:=FMainForm.eNPK.Text;
  lSpecialnostNew.Caption:=FMainForm.eSpecialnoct.Text;
  lFIONew.Caption:=FMainForm.eFIO.Text;
  lWorkTypeNew.Caption:=FMainForm.eWorkType.Text;
  lSoftTypeNew.Caption:=FMainForm.eSoftType.Text;
end;

// Изменяем данные в БД
procedure TFModifyData.bOkClick(Sender: TObject);
var
  bIsNoErrorInDB: boolean;
begin
  // изменение данных в "Журнале"
  FMainForm.SQLAddingData.Close;
  with (FMainForm.SQLAddingData.SQL) do begin
    Clear;
    Add('UPDATE Журнал');
    Add('SET Журнал.[дата и время] = '        +''''+lDateNew.Caption+' '+lTimeNew.Caption+''''); // дата и время
    Add('SET Журнал.[№ аудитории] = '         +''''+lNAuditoriiNew.Caption+''''); // дата и время
    Add('SET Журнал.[№ ПК] = '                +''''+lNPKNew.Caption+''''); // дата и время
    Add('SET Журнал.[специальность] = '       +''''+lSpecialnostNew.Caption+''''); // дата и время
    Add('SET Журнал.[ФИО] = '                 +''''+lFIONew.Caption+''''); // дата и время
    Add('SET Журнал.[вид работы] = '          +''''+lWorkTypeNew.Caption+''''); // дата и время
    Add('SET Журнал.[работа в программах] = ' +''''+lSoftTypeNew.Caption+''''); // дата и время
    Add('WHERE Журнал.[№ п/п] = '             +lNpp.Caption+';');
  end;

  // изменение данных в "Неполадки"
  if (Length(FMainForm.eError.Text)>0) then begin
    bIsNoErrorInDB:= FMainForm.IsNoErrorInDB;
    FMainForm.SQLAddingData.Close;
    // если записи о неполадках не было - добавляем ее
    if (bIsNoErrorInDB) then begin
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('INSERT INTO Неполадки([№ записи в Журнале],[Описание неполадки])');
        Add('VALUES');
        Add('(');
        Add(''''+lNpp.Caption+''',');         // № записи в Журнале
        Add(''''+FMainForm.eError.Text+''''); // Описание неполадки
        Add(');');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end
    // если записи о неполадках была - изменяем ее
    else begin
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('UPDATE Неполадки');
        Add('SET Неполадки.[Описание неполадки] = '+''''+FMainForm.eError.Text+'''');
        Add('WHERE Неполадки.[№ записи в Журнале] = '+lNpp.Caption+';');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end;
  end
  // предлагаем удалить запрись о неполадках, если поле ввода неполадки было очищено
  else
    FMainForm.pmDelitingError.Click;
  Close;
end;

end.
