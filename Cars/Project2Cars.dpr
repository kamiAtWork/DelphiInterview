program Project2Cars;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufmCarsManipulation in 'ufmCarsManipulation.pas' {fmCarsManipulation},
  Classes.Producer in 'Classes.Producer.pas',
  Classes.Consumer in 'Classes.Consumer.pas',
  Classes.Basic in 'Classes.Basic.pas',
  Classes.Transporter in 'Classes.Transporter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmCarsManipulation, fmCarsManipulation);
  Application.Run;
end.
