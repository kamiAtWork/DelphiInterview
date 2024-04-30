unit Classes.Basic;

interface

type
  TCar = class
  private
    FVIN: string;
    FModel: string;
  public
    property Model: string read FModel;
    property VIN: string read FVIN;

    class function ConstructCar(const AModel: string): TCar;
  end;

  //ToDo: доопределить тип контейнера для хранения нескольких экземпляров TCar
  TCarBatch = class

  end;

implementation

uses
  System.SysUtils;

{ TCar }

class function TCar.ConstructCar(const AModel: string): TCar;
begin
  Result := TCar.Create;
  Result.FModel := AModel;
  Result.FVIN := TGUID.NewGUID.ToString;
end;

end.
