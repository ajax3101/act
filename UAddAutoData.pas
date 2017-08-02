unit UAddAutoData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFAddAutoDataForm = class(TForm)
    GroupBox1: TGroupBox;
    eNAuditorii: TComboBox;
    eWorkType: TComboBox;
    eSoftType: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    bOk: TButton;
    bCancel: TButton;
    cbNAuditorii: TCheckBox;
    cbSpecialnoct: TCheckBox;
    cbWorkType: TCheckBox;
    cbSoftType: TCheckBox;
    eSpecialnoct: TComboBox;
    procedure bCancelClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddAutoDataForm: TFAddAutoDataForm;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFAddAutoDataForm.bCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFAddAutoDataForm.bOkClick(Sender: TObject);
begin
  stNAuditorii:=eNAuditorii.Text;
  stWorkType:=eWorkType.Text;
  stSoftType:=eSoftType.Text;
  stSpecialnoct:=eSpecialnoct.Text;

  bAddNAuditorii:=cbNAuditorii.Checked;
  bAddWorkType:=cbWorkType.Checked;
  bAddSoftType:=cbSoftType.Checked;
  bAddSpecialnost:=cbSpecialnoct.Checked;

  FMainForm.pmAddAutoNAuditorii.Enabled  := (Length(eNAuditorii.Text)>0);
  FMainForm.pmAddAutoWorkType.Enabled    := (Length(eWorkType.Text)>0);
  FMainForm.pmAddAutoSoftType.Enabled    := (Length(eSoftType.Text)>0);
  FMainForm.pmAddAutoSpecialnoct.Enabled := (Length(eSpecialnoct.Text)>0);

  Close;
end;

procedure TFAddAutoDataForm.FormShow(Sender: TObject);
begin
  eNAuditorii.Items:=FMainForm.eNAuditorii.Items;
  eWorkType.Items:=FMainForm.eWorkType.Items;
  eSoftType.Items:=FMainForm.eSoftType.Items;
  eSpecialnoct.Items:=FMainForm.eSpecialnoct.Items;

  eNAuditorii.Text:=stNAuditorii;
  eWorkType.Text:=stWorkType;
  eSoftType.Text:=stSoftType;
  eSpecialnoct.Text:=stSpecialnoct;

  cbNAuditorii.Checked:=bAddNAuditorii;
  cbWorkType.Checked:=bAddWorkType;
  cbSoftType.Checked:=bAddSoftType;
  cbSpecialnoct.Checked:=bAddSpecialnost;
end;

procedure TFAddAutoDataForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  eNAuditorii.Items.Clear;
  eWorkType.Items.Clear;
  eSoftType.Items.Clear;
end;

end.
