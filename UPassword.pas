unit UPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls;

type
  TFPasswordForm = class(TForm)
    bConnect: TButton;
    fpPanel: TPanel;
    lPassword: TLabel;
    lUserName: TLabel;
    ePassword: TEdit;
    eUserName: TEdit;
    bClose: TButton;
    procedure bCloseClick(Sender: TObject);
    procedure bConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPasswordForm: TFPasswordForm;

implementation

uses UMashineTime;

{$R *.dfm}

procedure TFPasswordForm.bCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFPasswordForm.bConnectClick(Sender: TObject);
begin
  if (not FMainForm.ADOConnection.Connected) then
    FMainForm.ADOConnection.Open(eUserName.Text,ePassword.Text);
  if (FMainForm.ADOConnection.Connected) then
    Close;
end;

end.
