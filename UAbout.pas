unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MPlayer, OleCtnrs;

type
  TFAboutForm = class(TForm)
    OleContainer1: TOleContainer;
    MediaPlayer1: TMediaPlayer;
    Copyright: TLabel;
    Comments: TLabel;
    Version: TLabel;
    ProductName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAboutForm: TFAboutForm;

implementation

{$R *.dfm}

end.
