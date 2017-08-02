program MashineTime;

uses
  Forms,
  UMashineTime in 'UMashineTime.pas' {FMainForm},
  UPassword in 'UPassword.pas' {FPasswordForm},
  UAddingData in 'UAddingData.pas' {FAddingDataForm},
  UAddingError in 'UAddingError.pas' {FAddingErrorForm},
  UDeleteData in 'UDeleteData.pas' {FDeleteDataForm},
  UModifyData in 'UModifyData.pas' {FModifyData},
  UAddAutoData in 'UAddAutoData.pas' {FAddAutoDataForm},
  UOptions in 'UOptions.pas' {FOptionsForm},
  UAbout in 'UAbout.pas' {FAboutForm},
  USortForm in 'USortForm.pas' {FSortForm},
  UOutDatas in 'UOutDatas.pas' {FOutDatasForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainForm, FMainForm);
  Application.CreateForm(TFPasswordForm, FPasswordForm);
  Application.CreateForm(TFAddingDataForm, FAddingDataForm);
  Application.CreateForm(TFAddingErrorForm, FAddingErrorForm);
  Application.CreateForm(TFDeleteDataForm, FDeleteDataForm);
  Application.CreateForm(TFModifyData, FModifyData);
  Application.CreateForm(TFAddAutoDataForm, FAddAutoDataForm);
  Application.CreateForm(TFOptionsForm, FOptionsForm);
  Application.CreateForm(TFAboutForm, FAboutForm);
  Application.CreateForm(TFSortForm, FSortForm);
  Application.CreateForm(TFOutDatasForm, FOutDatasForm);
  Application.Run;
end.
