program Project4VCLSample;

uses
  Vcl.Forms,
  ufmVCL in 'ufmVCL.pas' {Form55},
  ufrSample in 'ufrSample.pas' {frSample: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm55, Form55);
  Application.Run;
end.
