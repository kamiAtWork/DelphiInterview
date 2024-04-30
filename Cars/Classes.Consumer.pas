unit Classes.Consumer;

interface

uses
  Classes.Basic;

type
  TCarDealer = class
  private
    FCarStorage: TCarBatch; // ToDo: 3 уточнить (или переопределить) тип хранилища
  public
    //ToDo: 4 реализовать методы
    procedure ReceiveCars(ACarBatch: TCarBatch);
    function SaleCar(const AModel: string): TCar;
  end;

implementation

{ TCarDealer }

procedure TCarDealer.ReceiveCars(ACarBatch: TCarBatch);
begin

end;

function TCarDealer.SaleCar(const AModel: string): TCar;
begin

end;

end.
