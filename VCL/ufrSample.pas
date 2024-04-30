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
  Vcl.CheckLst,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.Buttons;

type
  TfrSample = class(TFrame)
    gbOuter: TGroupBox;
    btn1: TButton;
    chklst1: TCheckListBox;
    procedure chklst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Init(ACounter: Integer);
  end;

implementation

// ToDo: �� ������� ������ btn1 ����� ������ ���������.

{$R *.dfm}
{ TfrSample }

procedure TfrSample.chklst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // ToDo: 2. �� ������� �� ������� Del � CheckListBox ����� ������ ���������, ������� ��� ��
  //  ���������. ���� ��� �������� ������. ��� ����� ��������� ��������� �������?
  if (Key = VK_DELETE) then
    Free;
end;

procedure TfrSample.Init(ACounter: Integer);
var
  i: Integer;
begin
  gbOuter.Caption := Format('Item %d', [ACounter]);
  for i := 0 to ACounter - 1 do
    chklst1.AddItem(Format('checkbox %d', [i]), nil);
end;

end.
