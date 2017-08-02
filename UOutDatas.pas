unit UOutDatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ToolWin, DB, ADODB, Menus;

type
  TFOutDatasForm = class(TForm)
    GroupBox1: TGroupBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    SQLOutData: TADOQuery;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    PopupMenu1: TPopupMenu;
    pmClear: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    WHERE1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    gbNpp: TGroupBox;
    gbNAuditorii: TGroupBox;
    gbSpecialnoct: TGroupBox;
    gbWorkType: TGroupBox;
    gbSoftType: TGroupBox;
    gbFIO: TGroupBox;
    gbNPK: TGroupBox;
    gbDateTime: TGroupBox;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOutDatasForm: TFOutDatasForm;

implementation

uses UMashineTime;

{$R *.dfm}

end.
