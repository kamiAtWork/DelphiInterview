program Project3DB;

uses
  Vcl.Forms,
  ufmDBSample in 'ufmDBSample.pas' {fmDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmDB, fmDB);
  Application.Run;
end.
