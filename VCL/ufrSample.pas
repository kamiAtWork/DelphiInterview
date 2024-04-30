unit ufrSample;

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
  Vcl.StdCtrls,
  Vcl.CheckLst;

type
  TfrSample = class(TFrame)
    gbOuter: TGroupBox;
    btn1: TButton;
    chklst1: TCheckListBox;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Init(ACounter: Integer);
  end;

implementation

{$R *.dfm}
{ TfrSample }

procedure TfrSample.Init(ACounter: Integer);
var
  i: Integer;
begin
  gbOuter.Caption := Format('Item %d', [ACounter]);
  for i := 0 to ACounter - 1 do
    chklst1.AddItem(Format('checkbox %d', [i]));
end;

end.
