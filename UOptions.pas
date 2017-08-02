unit UOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFOptionsForm = class(TForm)
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    cbViewOnlyAuditorii: TCheckBox;
    eNAuditorii: TComboBox;
    TabSheet2: TTabSheet;
    cbNotViewAniAuditorii: TCheckBox;
    GroupBox1: TGroupBox;
    rbSortMany: TRadioButton;
    rbSortOne: TRadioButton;
    bSortOptions: TButton;
    bCancel: TButton;
    bApp: TButton;
    bOK: TButton;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    cbAddAutoData: TCheckBox;
    bOptionsAutoData: TButton;
    cbAutoTime: TCheckBox;
    procedure bOKClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure cbViewOnlyAuditoriiClick(Sender: TObject);
    procedure cbViewOnlyAuditoriiEnter(Sender: TObject);
    procedure rbSortManyEnter(Sender: TObject);
    procedure rbSortOneEnter(Sender: TObject);
    procedure cbAddAutoDataEnter(Sender: TObject);
    procedure cbAddAutoDataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bAppClick(Sender: TObject);
    procedure bOptionsAutoDataClick(Sender: TObject);
    procedure bSortOptionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOptionsForm: TFOptionsForm;

implementation

uses UMashineTime, USortForm;

{$R *.dfm}

procedure TFOptionsForm.bOKClick(Sender: TObject);
begin
  bApp.Click;
  bCancel.Click;
end;

procedure TFOptionsForm.bCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFOptionsForm.cbViewOnlyAuditoriiClick(Sender: TObject);
begin
  cbNotViewAniAuditorii.Enabled:=cbViewOnlyAuditorii.Checked;
end;

procedure TFOptionsForm.cbViewOnlyAuditoriiEnter(Sender: TObject);
begin
  cbNotViewAniAuditorii.Enabled:=cbViewOnlyAuditorii.Checked;
end;

procedure TFOptionsForm.rbSortManyEnter(Sender: TObject);
begin
  bSortOptions.Enabled:=true;
end;

procedure TFOptionsForm.rbSortOneEnter(Sender: TObject);
begin
  bSortOptions.Enabled:=false;
end;

procedure TFOptionsForm.cbAddAutoDataEnter(Sender: TObject);
begin
  bOptionsAutoData.Enabled:= cbAddAutoData.Checked;
end;

procedure TFOptionsForm.cbAddAutoDataClick(Sender: TObject);
begin
  bOptionsAutoData.Enabled:= cbAddAutoData.Checked;
end;

procedure TFOptionsForm.FormShow(Sender: TObject);
begin
  PageControl.ActivePageIndex:=0;

  // Обновление данных
  // Фильтр
    cbViewOnlyAuditorii.Checked:=bViewOnlyAuditorii;
    cbNotViewAniAuditorii.Checked:=bNotViewAniAuditorii;
    cbNotViewAniAuditorii.Enabled:=bViewOnlyAuditorii;
    eNAuditorii.Items:=FMainForm.eNAuditorii.Items;
    eNAuditorii.Text:=stOnlyAuditorii;

  // Сортировка
    rbSortOne.Checked:=bSortOne;
    rbSortMany.Checked:=bSortMany;
    bSortOptions.Enabled:=bSortMany;

  // Автоматическое добавление данных
    cbAutoTime.Checked:=bAutoTime;
    cbAddAutoData.Checked:=bAddAutoData;
    bOptionsAutoData.Enabled:=bAddAutoData;
end;

procedure TFOptionsForm.bAppClick(Sender: TObject);
begin
  // Запись данных
  // Фильтр
    bViewOnlyAuditorii:=cbViewOnlyAuditorii.Checked;
    bNotViewAniAuditorii:=cbNotViewAniAuditorii.Checked;
    stOnlyAuditorii:=eNAuditorii.Text;
    FMainForm.eNAuditorii.Items.Clear;

  // Сортировка
    bSortOne:=rbSortOne.Checked;
    bSortMany:=rbSortMany.Checked;

  // Автоматическое добавление данных
    bAutoTime:=cbAutoTime.Checked;
    bAddAutoData:=cbAddAutoData.Checked;
end;

procedure TFOptionsForm.bOptionsAutoDataClick(Sender: TObject);
begin
  FMainForm.pmModifyAutoData.Click;
end;

procedure TFOptionsForm.bSortOptionsClick(Sender: TObject);
begin
  FSortForm.ShowModal;
end;

end.
