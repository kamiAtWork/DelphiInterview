unit ufmBasic;

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
  Vcl.Dialogs,
  Classes.Producer;

type
  TfmBasic = class(TForm)
  private
    { Private declarations }
    FCarFactory: TCarFactory;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  fmBasic: TfmBasic;

implementation

{$R *.dfm}
{ TForm55 }

constructor TfmBasic.Create(AOwner: TComponent);
begin
  inherited;
  FCarFactory := TCarFactory.Create;
end;

end.
