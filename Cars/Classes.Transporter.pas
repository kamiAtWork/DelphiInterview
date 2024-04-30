unit Classes.Transporter;

interface

uses
  System.Classes,
  Classes.Basic,
  Classes.Producer,
  Classes.Consumer;

type
  TCarTransporter = class(TThread)
  strict private
    FCarFactory: TCarFactory;
    FCarDealer: TCarDealer;
    FCarCount: Integer;

    procedure WriteToLog(const ALogStr: string);
  protected
    procedure Execute; override;
  public
    constructor Create(ACarFactory: TCarFactory; ACarDealer: TCarDealer; ACarCount: Integer);

  end;

implementation

uses
  System.SysUtils;

{ TCarTransporter }

constructor TCarTransporter.Create(ACarFactory: TCarFactory; ACarDealer: TCarDealer; ACarCount: Integer);
begin
  FCarFactory := ACarFactory;
  FCarDealer := ACarDealer;
  FCarCount := ACarCount;
end;

procedure TCarTransporter.Execute;
var
  CarBatch: TCarBatch;
begin
  // ToDo: 5 какие здесь могут возникнуть проблемы? Как их решать?

  WriteToLog(Format('поток %d, поехали на фабрику', [TThread.CurrentThread.ThreadID]));
  Sleep(1000);
  WriteToLog(Format('поток %d, приехали на фабрику, забираем %d машин', [TThread.CurrentThread.ThreadID, FCarCount]));

  //=====================
  CarBatch := FCarFactory.ConstructCarBatch(FCarCount);
  //=====================

  WriteToLog(Format('поток %d, машины погружены, поехали к дилеру', [TThread.CurrentThread.ThreadID]));
  Sleep(2000);
  WriteToLog(Format('поток %d, приехали к дилеру, разгружаем контейнер', [TThread.CurrentThread.ThreadID]));

  //=====================
  FCarDealer.ReceiveCars(CarBatch);
  //=====================

  WriteToLog(Format('поток %d, Job is done!', [TThread.CurrentThread.ThreadID]));
end;

procedure TCarTransporter.WriteToLog(const ALogStr: string);
begin
  // см. ToDo 7
end;

end.
