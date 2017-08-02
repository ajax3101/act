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
  // ������� Hint � ��������� ������ ��
  DateTime:=FMainForm.TableMain.FieldByName('���� � �����').AsDateTime;
  eError.Hint:=
  '����:                  '+DateToStr(DateTime)+chr(13)+
  '�����:                '+TimeToStr(DateTime)+chr(13)+
  '� ���������:     '+FMainForm.TableMain.FieldByName('� ���������').AsString+chr(13)+
  '� ��:                 '+FMainForm.TableMain.FieldByName('� ��').AsString+chr(13)+
  '�������������: '+FMainForm.TableMain.FieldByName('�������������').AsString+chr(13)+
  '���:                  '+FMainForm.TableMain.FieldByName('���').AsString;
  // ���������� Hint
  eError.ShowHint:=true;

  // ���������� ���������� ���������, ���� ������ � �� ��� ����������
  // ���������� ������� ������ � ��
  bIsNoErrorInDB:=FMainForm.IsNoErrorInDB;
  // ���������� ��������� ���������
  eError.Lines.Clear;
  if (not bIsNoErrorInDB) then begin
    FMainForm.SQLAddingData.First;
    eError.Text:=FMainForm.SQLAddingData.FieldByName('�������� ���������').AsString;
  end;
end;

// ��������� ������ � ���������
procedure TFAddingErrorForm.bAddingClick(Sender: TObject);
begin
  FMainForm.SQLAddingData.Close;
  // ���� ������ � ��������� � �� ���
  if (bIsNoErrorInDB) then begin
    // ���� eError �������� ������ � ���������
    if (Length(eError.Text)>0) then begin
      // ��������� ������ � ��
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('INSERT INTO ���������([� ������ � �������],[�������� ���������])');
        Add('VALUES');
        Add('(');
        Add(''''+FMainForm.TableMain.FieldByName('� �/�').AsString+''','); // � ������ � �������
        Add(''''+eError.Text+'''');                                        // �������� ���������
        Add(');');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end;
  end
  // ���� ������ � ��������� � �� ����
  else begin
    // ���� eError �������� ������ � ���������
    if (Length(eError.Text)>0) then begin
      // �������� ������
      with (FMainForm.SQLAddingData.SQL) do begin
        Clear;
        Add('UPDATE ���������');
        Add('SET ���������.[�������� ���������] = '+''''+eError.Text+'''');
        Add('WHERE ���������.[� ������ � �������] = '+FMainForm.TableMain.FieldByName('� �/�').AsString+';');
      end;
      FMainForm.SQLAddingData.ExecSQL;
    end
    // ���� eError �� �������� ������ � ���������
    else begin
      // ���������� ������� ������ � ��������� �� ��
      FMainForm.pmDelitingError.Click;
    end;
  end;
  Close;
end;

end.
