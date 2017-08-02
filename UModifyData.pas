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

  lDateNew.Caption:=FMainForm.eDate.Text;
  lTimeNew.Caption:=FMainForm.eTime.Text;
  lNAuditoriiNew.Caption:=FMainForm.eNAuditorii.Text;
  lNPKNew.Caption:=FMainForm.eNPK.Text;
  lSpecialnostNew.Caption:=FMainForm.eSpecialnoct.Text;
  lFIONew.Caption:=FMainForm.eFIO.Text;
  lWorkTypeNew.Caption:=FMainForm.eWorkType.Text;
  lSoftTypeNew.Caption:=FMainForm.eSoftType.Text;
end;

// �������� ������ � ��
procedure TFModifyData.bOkClick(Sender: TObject);
var
  bIsNoErrorInDB: boolean;
begin
  // ��������� ������ � "�������"
  FMainForm.SQLAddingData.Close;
  with (FMainForm.SQLAddingData.SQL) do begin
    Clear;
    Add('UPDATE ������');
    Add('SET ������.[���� � �����] = '        +''''+lDateNew.Caption+' '+lTimeNew.Caption+''''); // ���� � �����
    Add('SET ������.[� ���������] = '         +''''+lNAuditoriiNew.Caption+''''); // ���� � �����
    Add('SET ������.[� ��] = '                +''''+lNPKNew.Caption+''''); // ���� � �����
    Add('SET ������.[�������������] = '       +''''+lSpecialnostNew.Caption+''''); // ���� � �����
    Add('SET ������.[���] = '                 +''''+lFIONew.Caption+''''); // ���� � �����
    Add('SET ������.[��� ������] = '          +''''+lWorkTypeNew.Caption+''''); // ���� � �����
    Add('SET ������.[������ � ����������] = ' +''''+lSoftTypeNew.Caption+''''); // ���� � �����
    Add('WHERE ������.[� �/�] = '             +lNpp.Caption+';');
  end;

  // ��������� ������ � "���������"
  if (Length(FMainForm.eError.Text)>0) then begin
    bIsNoErrorInDB:= FMainForm.IsNoErrorInDB;
    FMainForm.SQLAddingData.Close;
    // ���� ������ � ���������� �� ���� - ��������� ��
    if (bIsNoErrorInDB) then begin
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('INSERT INTO ���������([� ������ � �������],[�������� ���������])');
        Add('VALUES');
        Add('(');
        Add(''''+lNpp.Caption+''',');         // � ������ � �������
        Add(''''+FMainForm.eError.Text+''''); // �������� ���������
        Add(');');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end
    // ���� ������ � ���������� ���� - �������� ��
    else begin
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('UPDATE ���������');
        Add('SET ���������.[�������� ���������] = '+''''+FMainForm.eError.Text+'''');
        Add('WHERE ���������.[� ������ � �������] = '+lNpp.Caption+';');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end;
  end
  // ���������� ������� ������� � ����������, ���� ���� ����� ��������� ���� �������
  else
    FMainForm.pmDelitingError.Click;
  Close;
end;

end.
