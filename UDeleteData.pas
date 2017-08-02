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
  dtDateTime:=FMainForm.TableMain.FieldByName('���� � �����').AsDateTime;
  lDate.Caption:=DateToStr(dtDateTime);
  lTime.Caption:=TimeToStr(dtDateTime);
  lNpp.Caption:=FMainForm.TableMain.FieldByName('� �/�').AsString;
  lNAuditorii.Caption:=FMainForm.TableMain.FieldByName('� ���������').AsString;
  lNPK.Caption:=FMainForm.TableMain.FieldByName('� ��').AsString;
  lSpecialnost.Caption:=FMainForm.TableMain.FieldByName('�������������').AsString;
  lFIO.Caption:=FMainForm.TableMain.FieldByName('���').AsString;
  lWorkType.Caption:=FMainForm.TableMain.FieldByName('��� ������').AsString;
  lSoftType.Caption:=FMainForm.TableMain.FieldByName('������ � ����������').AsString;
end;

procedure TFDeleteDataForm.bNoClick(Sender: TObject);
begin
  Close;
end;

// �������� ������ �� ��
procedure TFDeleteDataForm.bOkClick(Sender: TObject);
begin
  // ������� ��������� � ������� "���������", ���� ��� ����
  if (not FMainForm.IsNoErrorInDB) then begin
    FMainForm.SQLAddingData.Close;
    // ��������� SQL ������ �� �������� ������
    with (FMainForm.SQLAddingData.SQL) do begin
      Clear;
      Add('DELETE ���������.*');
      Add('FROM ���������');
      Add('WHERE ���������.[� ������ � �������] = '+lNpp.Caption);
    end;
    // ��������� ������, ��� ����� ������ ������ �� ������� "���������"
    FMainForm.SQLAddingData.ExecSQL;
    // ��������� TableErrors ( Refresh �� �������� :( )
    FMainForm.TableErrors.Close;
    FMainForm.TableErrors.Open;
  end;
  // ������� ���� ������
  FMainForm.SQLAddingData.Close;
  with (FMainForm.SQLAddingData.SQL) do begin
    Clear;
    Add('DELETE ������.*');
    Add('FROM ������');
    Add('WHERE ������.[� �/�] = '+lNpp.Caption);
  end;
  FMainForm.SQLAddingData.ExecSQL;
  FMainForm.TableMain.Close;
  FMainForm.TableMain.Open;
  Close;
end;

end.
