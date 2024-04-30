unit ufmVCL;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs;

type
  TForm55 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form55: TForm55;

implementation

uses
  ufrSample;

{$R *.dfm}
// ToDo: 1. При создании формы сгенерировать 10 фреймов TfrSample,
//  и положить их на форму с выравниванием по верху.
//  не забыть у каждого фрейма вызвать метод init(..)

procedure TForm55.FormCreate(Sender: TObject);
var
  i: Integer;
  fr: TfrSample;
begin
  for i := 0 to 9 do
  begin
    fr := TfrSample.Create(nil);
    fr.Parent := Self;
    fr.Height := 90;
    fr.Top := fr.Height * i + 1;
    fr.Align := alTop;

    fr.Init(i);
  end;
end;

end.
