unit Classes.Producer;

interface

uses
  Classes.Basic;

type
  TCarFactory = class
  public
    // ToDo: 2 реализовать метод создания нескольких экземпляров TCar, помещаемых в
    // контейнер. Можно менять сигнатуру метода.
    function ConstructCarBatch(ACount: Integer): TCarBatch;
  end;

implementation

{ TCarFactory }

function TCarFactory.ConstructCarBatch(ACount: Integer): TCarBatch;
begin

end;

end.
