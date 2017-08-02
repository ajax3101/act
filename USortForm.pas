unit USortForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFSortForm = class(TForm)
    GroupBox1: TGroupBox;
    gbNpp: TGroupBox;
    rbNppASC: TRadioButton;
    rbNppDESC: TRadioButton;
    cbNpp: TCheckBox;
    gbNAuditorii: TGroupBox;
    rbNAuditoriiASC: TRadioButton;
    rbNAuditoriiDESC: TRadioButton;
    cbNAuditorii: TCheckBox;
    gbWorkType: TGroupBox;
    rbWorkTypeASC: TRadioButton;
    rbWorkTypeDESC: TRadioButton;
    cbWorkType: TCheckBox;
    gbNPK: TGroupBox;
    rbNPKASC: TRadioButton;
    rbNPKDESC: TRadioButton;
    cbNPK: TCheckBox;
    gbSoftType: TGroupBox;
    rbSoftTypeASC: TRadioButton;
    rbSoftTypeDESC: TRadioButton;
    cbSoftType: TCheckBox;
    gbSpecialnoct: TGroupBox;
    rbSpecialnoctASC: TRadioButton;
    rbSpecialnoctDESC: TRadioButton;
    cbSpecialnoct: TCheckBox;
    gbFIO: TGroupBox;
    rbFIOASC: TRadioButton;
    rbFIODESC: TRadioButton;
    cbFIO: TCheckBox;
    bOK: TButton;
    bCancel: TButton;
    gbDateTime: TGroupBox;
    rbDateTimeASC: TRadioButton;
    rbDateTimeDESC: TRadioButton;
    cbDateTime: TCheckBox;
    procedure bCancelClick(Sender: TObject);
    procedure bOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure EnableGB(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FSortForm: TFSortForm;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFSortForm.bCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFSortForm.bOKClick(Sender: TObject);
begin
  bNpp:=cbNpp.Checked;
  bDateTime:=cbDateTime.Checked;
  bNAuditorii:=cbNAuditorii.Checked;
  bNPK:=cbNPK.Checked;
  bSpecialnoct:=cbSpecialnoct.Checked;
  bFIO:=cbFIO.Checked;
  bWorkType:=cbWorkType.Checked;
  bSoftType:=cbSoftType.Checked;

  bNppIsASC:=rbNppASC.Checked;
  bDateTimeIsASC:=rbDateTimeASC.Checked;
  bNAuditoriiIsASC:=rbNAuditoriiASC.Checked;
  bNPKIsASC:=rbNPKASC.Checked;
  bSpecialnoctIsASC:=rbSpecialnoctASC.Checked;
  bFIOIsASC:=rbFIOASC.Checked;
  bWorkTypeIsASC:=rbWorkTypeASC.Checked;
  bSoftTypeIsASC:=rbSoftTypeASC.Checked;

  bCancel.Click;
end;

procedure TFSortForm.EnableGB(Sender: TObject);
begin
  gbNpp.Enabled:=cbNpp.Checked;
  rbNppASC.Enabled:=cbNpp.Checked;
  rbNppDESC.Enabled:=cbNpp.Checked;

  gbDateTime.Enabled:=cbDateTime.Checked;
  rbDateTimeASC.Enabled:=cbDateTime.Checked;
  rbDateTimeDESC.Enabled:=cbDateTime.Checked;

  gbNAuditorii.Enabled:=cbNAuditorii.Checked;
  rbNAuditoriiASC.Enabled:=cbNAuditorii.Checked;
  rbNAuditoriiDESC.Enabled:=cbNAuditorii.Checked;

  gbNPK.Enabled:=cbNPK.Checked;
  rbNPKASC.Enabled:=cbNPK.Checked;
  rbNPKDESC.Enabled:=cbNPK.Checked;

  gbSpecialnoct.Enabled:=cbSpecialnoct.Checked;
  rbSpecialnoctASC.Enabled:=cbSpecialnoct.Checked;
  rbSpecialnoctDESC.Enabled:=cbSpecialnoct.Checked;

  gbFIO.Enabled:=cbFIO.Checked;
  rbFIOASC.Enabled:=cbFIO.Checked;
  rbFIODESC.Enabled:=cbFIO.Checked;

  gbWorkType.Enabled:=cbWorkType.Checked;
  rbWorkTypeASC.Enabled:=cbWorkType.Checked;
  rbWorkTypeDESC.Enabled:=cbWorkType.Checked;

  gbSoftType.Enabled:=cbSoftType.Checked;
  rbSoftTypeASC.Enabled:=cbSoftType.Checked;
  rbSoftTypeDESC.Enabled:=cbSoftType.Checked;
end;

procedure TFSortForm.FormShow(Sender: TObject);
begin
  cbNpp.OnEnter:=EnableGB;
  cbNpp.OnClick:=EnableGB;
  cbDateTime.OnEnter:=EnableGB;
  cbDateTime.OnClick:=EnableGB;
  cbNAuditorii.OnEnter:=EnableGB;
  cbNAuditorii.OnClick:=EnableGB;
  cbNPK.OnEnter:=EnableGB;
  cbNPK.OnClick:=EnableGB;
  cbSpecialnoct.OnEnter:=EnableGB;
  cbSpecialnoct.OnClick:=EnableGB;
  cbFIO.OnEnter:=EnableGB;
  cbFIO.OnClick:=EnableGB;
  cbWorkType.OnEnter:=EnableGB;
  cbWorkType.OnClick:=EnableGB;
  cbSoftType.OnEnter:=EnableGB;
  cbSoftType.OnClick:=EnableGB;

  rbNppASC.Checked:=bNppIsASC;
  rbDateTimeASC.Checked:=bDateTimeIsASC;
  rbNAuditoriiASC.Checked:=bNAuditoriiIsASC;
  rbNPKASC.Checked:=bNPKIsASC;
  rbSpecialnoctASC.Checked:=bSpecialnoctIsASC;
  rbFIOASC.Checked:=bFIOIsASC;
  rbWorkTypeASC.Checked:=bWorkTypeIsASC;
  rbSoftTypeASC.Checked:=bSoftTypeIsASC;

  rbNppDESC.Checked:= not bNppIsASC;
  rbDateTimeDESC.Checked:= not bDateTimeIsASC;
  rbNAuditoriiDESC.Checked:= not bNAuditoriiIsASC;
  rbNPKDESC.Checked:= not bNPKIsASC;
  rbSpecialnoctDESC.Checked:= not bSpecialnoctIsASC;
  rbFIODESC.Checked:= not bFIOIsASC;
  rbWorkTypeDESC.Checked:= not bWorkTypeIsASC;
  rbSoftTypeDESC.Checked:= not bSoftTypeIsASC;

  cbNpp.Checked:=bNpp;
  cbDateTime.Checked:=bDateTime;
  cbNAuditorii.Checked:=bNAuditorii;
  cbNPK.Checked:=bNPK;
  cbSpecialnoct.Checked:=bSpecialnoct;
  cbFIO.Checked:=bFIO;
  cbWorkType.Checked:=bWorkType;
  cbSoftType.Checked:=bSoftType;

  gbNpp.Enabled:=bNpp;
  gbDateTime.Enabled:=bDateTime;
  gbNAuditorii.Enabled:=bNAuditorii;
  gbNPK.Enabled:=bNPK;
  gbSpecialnoct.Enabled:=bSpecialnoct;
  gbFIO.Enabled:=bFIO;
  gbWorkType.Enabled:=bWorkType;
  gbSoftType.Enabled:=bSoftType;
end;

end.
