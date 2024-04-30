program ProjectDB;

uses
  Vcl.Forms,
  ufmDBSample in 'ufmDBSample.pas' {Form55};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm55, Form55);
  Application.Run;
end.
