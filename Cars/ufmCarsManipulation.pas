unit ufmCarsManipulation;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Classes.Producer,
  Classes.Consumer,
  Classes.Transporter,
  Vcl.StdCtrls,
  Vcl.Samples.Spin;

type
  TfmCarsManipulation = class(TForm)
    seThreadCount: TSpinEdit;
    btnStart: TButton;
    mmoLog: TMemo;
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
    FCarFactory: TCarFactory;
    FCarDealer: TCarDealer;

    procedure WriteToVisualLog(const logStr: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  fmCarsManipulation: TfmCarsManipulation;

implementation

{$R *.dfm}
{ TForm55 }

procedure TfmCarsManipulation.btnStartClick(Sender: TObject);
var
  ThreadCount: Integer;
  ThreadList: TList<TCarTransporter>;
  i: Integer;
  MyElem: TObject;
begin
  ThreadCount := seThreadCount.Value;

  ThreadList := TList<TThread>.Create;
  try
    for i := 0 to ThreadCount - 1 do
      ThreadList.Add(TCarTransporter.Create(FCarFactory, FCarDealer, i + 1));

    // ToDo: 6 (теоретически) как можно, модифицировав этот код и код потоков,
    // добиться синхронного начала работы всех TCarTransporter?
    for i := 0 to ThreadList.Count - 1 do
      ThreadList[i].Start;

  finally
    ThreadList.Free;
  end;
end;

constructor TfmCarsManipulation.Create(AOwner: TComponent);
begin
  inherited;
  FCarFactory := TCarFactory.Create;
  FCarDealer := TCarDealer.Create;
end;

procedure TfmCarsManipulation.WriteToVisualLog(const logStr: string);
begin
  // ToDo: 7 Модифицировать код, чтобы каждый TCarTransporter вызывал именно этот
  // метод для записи в лог.
  mmoLog.Lines.Add(logStr);
end;

end.
