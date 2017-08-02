unit UAddingData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TFAddingDataForm = class(TForm)
    GroupBox1: TGroupBox;
    bExit: TButton;
    eAddingText: TEdit;
    bAdd: TButton;
    procedure FormShow(Sender: TObject);
    procedure bAddClick(Sender: TObject);
    procedure eAddingTextChange(Sender: TObject);
    procedure bExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddingDataForm: TFAddingDataForm;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFAddingDataForm.FormShow(Sender: TObject);
begin
  eAddingText.Text:='';
  bAdd.Enabled:=false;
end;

procedure TFAddingDataForm.bAddClick(Sender: TObject);
begin
  FMainForm.AddSpravka(Caption,eAddingText.Text);
end;

procedure TFAddingDataForm.eAddingTextChange(Sender: TObject);
begin
  bAdd.Enabled:= (Length(eAddingText.Text)>0);
end;

procedure TFAddingDataForm.bExitClick(Sender: TObject);
begin
  Close;
end;

end.
