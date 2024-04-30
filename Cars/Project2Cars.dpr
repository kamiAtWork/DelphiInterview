program Project2Cars;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufmBasic in 'ufmBasic.pas' {fmBasic},
  Classes.Producer in 'Classes.Producer.pas',
  Classes.Consumer in 'Classes.Consumer.pas',
  Classes.Basic in 'Classes.Basic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmBasic, fmBasic);
  Application.Run;
end.
